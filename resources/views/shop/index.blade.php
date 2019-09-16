@extends('layout.master')

@section('title')
  Laravel Shopping Cart
@endsection
@section('content')
        @if(Session::get('success'))
        <div class="row">
              <div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
                  <div class=" alert-success alert" id="charge-message">
                          {{ Session::get('success') }}
                  </div>
              </div>
        </div>
        @endif
        @foreach($products->chunk(3) as $productChunk)
            <div class="row">
              @foreach($productChunk as $product)
                  <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                      <img src=" {{ $product->imagePath }} "
                       class="img-responsive" alt="IT book">
                      <div class="caption">
                        <h3>{{ $product->title }}</h3>
                          <p class="description">{{ $product->description }}</p>
                          <div class="clearfix">
                              <div class="pull-left price">Php {{ $product->price }}</div>
                              <a href="{{ route('product.addToCart',['id' =>$product->id]) }}" class="btn btn-success pull-right" role="button">
                              Add to Cart</a>
                          </div>

                      </div>
                    </div>
                  </div>
              @endforeach
            </div>
        @endforeach
@endsection
