<?php

/*
      I am actually using other way to route the previous one 
      is not like this but upon learning this is a nice also
      very clear it's only for me but for my team
 */
Route::get('/', [
      'uses' => 'ProductController@getIndex', // pointing to ProductController where there is a method named 'getIndex'
      'as' => 'product.index' // this like the name of the route, you can use by calling this 'product.index'
]);

/** Everything follows except for I group the other below, still the same*/

Route::get('/add-to-cart/{id}',[
        'uses' => 'ProductController@getAddToCart',
        'as' => 'product.addToCart'
]);

Route::get('/reduce/{id}',[
      'uses' => 'ProductController@getReduceByOne',
       'as' => 'product.reduceByOne'
]);

Route::get('/remove/{id}',[
      'uses' => 'ProductController@getRemoveItem',
      'as' => 'product.removeItem'
]);

Route::get('/add-to-cart',[
        'uses' => 'ProductController@getCart',
        'as' => 'product.shoppingCart'
]);

Route::get('/checkout',[
      'uses'=> 'ProductController@getCheckout',
      'as'=> 'checkout',
      'middleware'=>'auth'
]);

Route::post('/checkout',[
    'uses' => 'ProductController@postCheckout',
    'as' => 'checkout',
    'middleware' => 'auth'
]);

//group the route by its prefix "user/login, etc."
Route::group(['prefix'=>'user'],function(){

      Route::group(['middleware'=>'guest'],function(){
          Route::get('/signup',[
                'uses' => 'UserController@getSignup',
                 'as' => 'user.signup'
          ]);
          Route::post('/signup',[
                'uses' => 'UserController@postSignup',
                 'as' => 'user.signup'
          ]);

          Route::get('/signin',[
                'uses' => 'UserController@getSignin',
                 'as' => 'user.signin'
          ]);

          Route::post('/signin',[
                'uses' => 'UserController@postSignin',
                 'as' => 'user.signin'
          ]);
      });

      //group the route by middleware
      Route::group(['middleware'=> 'auth'],function(){ // using 'auth' middleware
            Route::get('/profile',[
                'uses' => 'UserController@getProfile',
                'as' => 'user.profile',
            ]);

            Route::get('/logout',[
                'uses'=> 'UserController@getLogout',
                'as' => 'user.logout'
            ]);
      });

});
