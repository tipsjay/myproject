<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;
use Session;
class UserController extends Controller
{
     public function getSignup() //get signup page
     {
        return view('user.signup');
     }

     public function postSignup(Request $request) /*
                                                      this is not final also i just let it 
                                                      to be this way first simple validation 
                                                      for the signup part   
                                                  */
     {
         $this->validate($request,[
             'email' => 'email|required|unique:users',
             'password' => 'required|min:7'
         ]);

         $user = new User([ // create new user
              'email' => $request->input('email'),
              'password'=> bcrypt($request->input('password'))
         ]);
         $user->save(); // save to the database

         Auth::login($user); // user authentication then it checks the oldUrl of the user
         if (Session::has('oldUrl')){
               $oldUrl = Session::get('oldUrl');
               Session::forget('oldUrl');
               return redirect()->to($oldUrl);
         }
         return redirect()->route('user.profile');
     }

     public function getSignin() //get sign in page
     {
        return view('user.signin');
     }

     public function postSignin(Request $request) // this is for sign in of the customer
     {
        $this->validate($request,[ //validates the request 
            'email'=> 'email|required',
            'password'=> 'required|min:7'
        ]);

        if(Auth::attempt(['email'=>$request->input('email'),'password'=> //in here this actually having authentication
          $request->input('password')])){
              if (Session::has('oldUrl')){ //checking if there is an oldUrl
                    $oldUrl = Session::get('oldUrl');
                    Session::forget('oldUrl');
                    return redirect()->to($oldUrl);
              }
                return redirect()->route('user.profile');
          }
          return redirect()->back();
     }

     public function getProfile() // this is the page where I assume the orders will be  this play (previous transac)
     {
       $orders = Auth::user()->orders;
       $orders->transform(function($order,$key) {
            $order->cart = unserialize($order->cart);
            return $order;
       });
        return view('user.profile',['orders'=>$orders]);
     }

     public function getLogout() // logout
     {
       Auth::logout(); 
       return redirect()->route('user.signin');
     }
}
