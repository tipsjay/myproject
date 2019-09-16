<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Cart;
use App\Order;
use Auth;

use App\Http\Requests;
use Session;

class ProductController extends Controller
{
    public function getIndex()
    {

      $products = Product::all();
      return view('shop.index',['products'=>$products]);
    }

    public function getAddToCart(Request $request, $id)
    {
       $product = Product::find($id);
       $oldCart = Session::has('cart') ? Session::get('cart') : null;
       $cart = new Cart($oldCart);
       $cart->add($product,$product->id);

       $request->session()->put('cart',$cart);
       //dd($request->session()->get('cart'));
       return redirect()->route('product.index');
    }

    public function getReduceByOne($id)
    {
          $oldCart = Session::has('cart') ? Session::get('cart') : null;
          $cart = new Cart($oldCart);
          $cart->reduceByOne($id);

          if(count($cart->items) > 0){
                Session::put('cart', $cart);
          }else{
                Session::forget('cart');
          }
          
          return redirect()->route('product.shoppingCart');
    }

    public function getRemoveItem($id)
    {
      $oldCart = Session::has('cart') ? Session::get('cart') : null;
      $cart = new Cart($oldCart);
      $cart->removeItem($id);

      if(count($cart->items) > 0){
            Session::put('cart', $cart);
      }else{
            Session::forget('cart');
      }

      return redirect()->route('product.shoppingCart');
    }

    public function getCart() {
        if (!Session::has('cart')){
              return view('shop.shopping-cart',['products' => null]);
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        return view('shop.shopping-cart', ['products' => $cart->items, 'totalPrice'=> $cart->totalPrice]);

    }

    public function getCheckout(Request $request)
    {
        if (!Session::has('cart')){
              return view('shop.shopping-cart');
        }
        $oldCart = Session::get('cart');
        $cart = new Cart($oldCart);
        $total = $cart->totalPrice;
        return view('shop.checkout',['total'=>$total]);
    }

    public function postCheckout(Request $request)
    {

        if(!Session::has('cart')){
              return redirect()->route('shop.shoppingCart');
        }
        $oldCart =  Session::get('cart');
        $cart = new Cart($oldCart);

        $order = new Order();
        $order->cart = serialize($cart);
        $order->address = $request->input('address');
        $order->name = $request->input('name');
        $order->payment_id  = ('payment ');

        Auth::user()->orders()->save($order);
        Session::forget('cart');//clear session
        return redirect()->route('product.index')->with('success','Successfully purchased products!');
    }
}
