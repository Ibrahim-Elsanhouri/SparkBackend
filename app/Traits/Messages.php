<?php 
namespace App\Traits;

use CRUDBooster;
   trait Messages {
    
    public function VerifyMessage(){
     //  $admins = User::where('id_cms_privileges' , 1)->pluck('id'); 
// dd($admin)
        $config['content'] = "هناك عميل بحاجة الى توثيق";
$config['to'] = CRUDBooster::adminPath('users18');
$config['id_cms_users'] =  [1]; //This is an array of id users
CRUDBooster::sendNotification($config);
    }


    /*
    public function after_recharge_customer($user_id){
        $config['content'] = "تم شراء نقاط الى حسابك ";
        $config['to'] = CRUDBooster::adminPath('/');
        $config['id_cms_users'] = [$user_id]; //This is an array of id users
        CRUDBooster::sendNotification($config);
    }
    public function after_buy_tender($user_id){
        $config['content'] = "تم شراء كراسة ";
        $config['to'] = CRUDBooster::adminPath('/');
        $config['id_cms_users'] = [$user_id]; //This is an array of id users
        CRUDBooster::sendNotification($config);
    }
    public function after_send_tender_customer(){
// please write this functions from the backend
    }

    */
}