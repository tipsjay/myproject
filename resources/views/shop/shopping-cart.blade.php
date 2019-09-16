@extends('layout.master')

@section('title')
  Laravel Shopping Cart
@endsection

@section('content')
    @if(Session::has('cart'))
        <div class="row">
              <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                    <ul class="list-group">
                            @foreach($products as $product)
                                  <li class="list-group-item">
                                      <span class="badge">{{ $product['qty'] }}</span>
                                      <strong>{{ $product['item'] ['title'] }}</strong>
                                      <span class="label label-success">{{ $product['price'] }}</span>
                                      <div class="btn-group">
                                            <button type="button" class="btn btn-primary btn-xs">Action</button>
                                              <button type="button" class="btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false">
                                                <span class="caret"></span>
                                                <span class="sr-only">Toggle Dropdown</span>
                                              </button>
                                                <ul class="dropdown-menu">
                                                  <li><a href="{{ route('product.reduceByOne',['id'=> $product['item']]) }}">Reduce By 1</a></li>
                                                  <li><a href="{{ route('product.removeItem', ['id'=> $product['item']]) }}">Reduce All</a></li>
                                                </ul>
                                      </div>

                                  </li>
                            @endforeach
                    </ul>
              </div>
        </div>
        <div class="row">
              <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                      <strong>Total: {{ $totalPrice}}</strong>
              </div>
        </div>
        <hr>
        <div class="row">
              <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                    <a href="{{ route('checkout') }}" type="button" class="btn btn-success" name="button">Checkout</a>
              </div>
        </div>
    @else
            <div class="row">
                  <div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
                          <h2>No Items in Cart!</h2>
                  </div>
            </div>
    @endif

@endsection
