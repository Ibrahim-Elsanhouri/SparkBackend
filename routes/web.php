<?php




/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function(){
    return view('index');
});






Auth::routes();



Route::get('/contact', 'ContactController@index');  
Route::post('/contact', 'ContactController@store')->name('contact'); 
//Route::get('/home', 'HomeController@index')->name('home');
Route::get('user/verify/{token}' , 'Auth\RegisterController@verifyEmail')->name('user.verify');

Route::resource('projects', 'ProjectController');

Route::post('/projects/search','ProjectController@search')->name('projects.search');

Route::get('/category/{id}' , 'CategoryController@show'); 
