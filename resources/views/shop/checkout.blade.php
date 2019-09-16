@extends('layout.master')

@section('title')
  Laravel Shopping Cart
@endsection

@section('content')
      <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                <h1>Checkout</h1>
                <h4>Your Total: Php {{ $total}}</h4>
                <div id="charge-error" class="alert aler-danger {{ !Session::has('error') ?
                  'hidden' : '' }}">
                  {{ Session::get('error')}}
                </div>
                <form  action="{{ route('checkout') }}" method="POST" id="checkout-form">
                  {{ csrf_field() }}
                      <div class="row">
                          <div class="col-xs-12">
                                <label for="name">Name</label>
                                <input type="text" name="name" id="name" class="form-control" required>
                          </div>
                          <div class="col-xs-12">
                                <label for="address">Address</label>
                                <input type="text" id="address" name="address" class="form-control" required >
                          </div>
                          <div class="col-xs-12">
                                <label for="card-name">Card Holder Name</label>
                                <input type="text" id="card-name" class="form-control" required >
                          </div>
                          <div class="col-xs-12">
                                <label for="card-number">Credit Card Number</label>
                                <input type="text" id="card-number" class="form-control" required >
                          </div>
                          <div class="col-xs-12">
                            <div class="row">
                              <div class="col-xs-6">
                                <div class="form-group">
                                  <label for="for-expiry-month">Expiration Month</label>
                                  <input type="text"  id="card-expiry-month" required class="form-control">
                                </div>
                              </div>
                              <div class="col-xs-6">
                                <div class="form-group">
                                  <label for="for-expiry-month">Expiration Year</label>
                                  <input type="number"  id="card-expiry-month" required class="form-control">
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="card-cvc">CVC</label>
                                    <input type="text" id="card-cvc" class="form-control" required>
                                </div>
                          </div>
                      </div>
                      <button type="submit" class="btn btn-success">Buy now</button>
                </form>
            </div>
      </div>
@endsection
