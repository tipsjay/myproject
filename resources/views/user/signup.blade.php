@extends('layout.master')

@section('content')
<div class="row">
     <div class="cold-md-4 col-md-offset-4">
          <h1>Sign Up</h1>

          <div class="well well-lg" style="width:500px">
                @if(count($errors)>0)
                   <div class="alert alert-danger">
                       @foreach($errors->all() as $error)
                             <p>{{ $error }}</p>
                       @endforeach
                   </div>
               @endif
               <form action="{{ route('user.signup') }}" method="post">
                 {{ csrf_field() }}
                         <div class="form-group">
                             <label for="email">E-Mail</label>
                             <input type="text" name="email" id="password" class="form-control" required>
                         </div>
                         <div class="form-group">
                           <label for="password">Password</label>
                           <input type="password" name="password" id="password" class="form-control" required>
                         </div>
                         <button type="submit" class="btn btn-primary">Sign Up</button>
               </form>
          </div>
     </div>
</div>
@endsection
