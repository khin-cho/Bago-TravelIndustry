@extends('format.adminmaster')
@section("title")
  Profile
@endsection
@section("controls")
    <a href="{{route('dashboard')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-home text-custom"></i>
        <span class="d-none d-lg-inline">Dashboard</span>
    </a>
    <a href="{{route('book-user')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-users text-custom"></i>
        <span class="d-none d-lg-inline">Booking Lists</span>
        @yield('bookU')
    </a>
    <a href="{{route('plist')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-line-chart text-custom"></i>
        <span class="d-none d-lg-inline">Packages</span>
    </a>
    <a href="{{route('admin-user-report')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-flag text-custom"></i>
        <span class="d-none d-lg-inline">Reports</span>
    </a>

@endsection
@section("actions")
    <a href="{{route('abook')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-user text-custom"></i>
        <span class="d-none d-lg-inline">New Book User</span>
    </a>
    <a href="{{route('gust')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-hotel text-custom"></i>
        <span class="d-none d-lg-inline">New Hotel</span>
    </a>
    <a href="{{route('gust-room')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-tag text-custom"></i>
        <span class="d-none d-lg-inline">Room Types</span>
    </a>
    <a href="{{route('addtown')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-table text-custom"></i>
        <span class="d-none d-lg-inline">Hotel Info</span>
    </a>
    <a href="{{route('restau')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-hand-spock-o h1 text-col1 text-custom"></i>

        <span class="d-none d-lg-inline">Restaurants</span>
    </a>
    <a href="{{route('staff-reg')}}" class="list-group-item list-group-item-action">
        <i class="fa fa-location-arrow text-custom"></i>
        <span class="d-none d-lg-inline">Create Trip</span>
    </a>
    <a href="{{route("adminprofile")}}" class="list-group-item list-group-item-action cusactive">
        <i class="fa fa-edit text-custom"></i>
        <span class="d-none d-lg-inline">Profile</span>
    </a>

@endsection
@section('breadcamp')
    <ol class="breadcrumb w-100">

            <li class="breadcrumb-item"><a href="{{route('dashboard')}}" class="owncol">Home</a></li>

        <li class="breadcrumb-item active">Profile</li>
    </ol>
@endsection
@section('content')
    <div class="row">
        <div class="col-12">
            <div class="container">
                <div class="row">

                    <div class="col-12 w-100 h-100 d-flex justify-content-center align-items-center">
                        <div class="card" style="width: 400px;">
                            <div class="card-header bg-secondary">
                                <img src="{{asset('data/images/1x/bago-logo1.png')}}" alt="" class="mb-3" style="height:50px;">
                                <h2 class="text-warning">Information</h2>
                            </div>
                            <div class="card-body">
                                @if (session('success'))

                                    <div class="alert alert-success" role="alert">
                                        {{session('success')}}
                                    </div>

                                @endif
                                <form method="post" action="{{route("aprofile")}}" class="form-group border p-3 form-bg " enctype="multipart/form-data">

                                    @csrf
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <img src="/images/{{\Illuminate\Support\Facades\Auth::user()->img}}" width="50px" class="pb-2">
                                                <input type="file" class="form-control  @error("img") is-invalid @enderror" name="img">
                                                @error("img")
                                                <p class="text-danger invalid-feedback">{{$message}}</p>
                                                @enderror
                                            </div>
                                            <div class="form-group">

                                                <input type="text" name="name" value="{{\Illuminate\Support\Facades\Auth::user()->name}}" class="form-control @error("name") is-invalid @enderror" placeholder="Full Name">
                                                @error("name")
                                                <p class="text-danger invalid-feedback">{{$message}}</p>
                                                @enderror
                                            </div>
                                            <div class="form-group">

                                                <input type="text" name="email" value="{{\Illuminate\Support\Facades\Auth::user()->email}}" class="form-control @error("email") is-invalid @enderror" placeholder="E-mail">
                                                @error("email")
                                                <p class="text-danger invalid-feedback">{{$message}}</p>
                                                @enderror
                                            </div>
                                            <div class="form-group">

                                                <input type="password" name="pwd" value="" class="form-control @error("pwd") is-invalid @enderror" placeholder="New Password">
                                                @error("pwd")
                                                <p class="text-danger invalid-feedback">{{$message}}</p>
                                                @enderror
                                            </div>
                                            <div class="form-group">

                                                <input type="password" name="cpwd" value="" class="form-control @error("cpwd") is-invalid @enderror" placeholder="Confirm Password">
                                                @error("cpwd")
                                                <p class="text-danger invalid-feedback">{{$message}}</p>
                                                @enderror
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-12 traveling-box">
                                            <div class="read-more">
                                                <button type="reset" class="read-more">Cancel</button>
                                                <button type="submit" class="read-more">Submit</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection



