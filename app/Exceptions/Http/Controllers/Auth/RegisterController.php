<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\VerifyUser;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ActiveEmail; 
use App\Events\Registeration; 
use App\Traits\Messages; 

class RegisterController extends Controller
{
    use  Messages;
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
      /*  return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]); 


        */

$user = User::create([
    'name' => $data['name'],
    'email' => $data['email'],
    'password' => bcrypt($data['password']),
    'mobile' => $data['mobile'],
    'roles_id' => $data['roles_id'],
    'categories_id' => $data['categories_id']


]); 
$verifyUser = new VerifyUser(); 
$verifyUser->user_id = $user->id; 
$verifyUser->token = str_random(50); 
$verifyUser->save(); 


//Mail::to($user->email)->send(new ActiveEmail($user));
event(new Registeration($user));

return $user; 
    }

    protected function registered(Request $request, $user)
    {
        //
        $this->guard()->logout(); 
        return redirect()->route('login')->with('msg', 'تم تسجيلك بنجاح , الرجاء التوجه الى الايميل لتفعيل حسابك 📧');
    }
   

    public function verifyEmail($token){
        $verifyUser = VerifyUser::where('token' , $token)->firstOrFail(); 
        $user = $verifyUser->user; 
        if ($user->active){
          
            return redirect()->route('login')->with('error' , 'هذا الحساب مغعل مسبقا ✌'); 

        } else {
            $verifyUser->user->active = 1; 
            $verifyUser->user->save(); 
            $this->VerifyMessage(); 
            return redirect('/')->with('msg' , 'تم تفعيل الحساب - سيتم التوثيق خلال 24 ساعة , يسعدنا تواجدك 💖'); 
        }
    }
}
