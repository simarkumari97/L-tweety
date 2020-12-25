@extends('layouts.app')

@section('content')

<form action="{{ $user->path() }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PATCH')
    
    <div class="mb-6">
        <label class="block mb-2 uppercase font-bold text-xs text-grey-700" for="name">
            Name
        </label>
        
        <input class="border border-grey-400 p-2 w-full" type="text" name="name" id="name" value="{{ $user->name }}" required>
        
        @error('name')
            <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
        @enderror
    </div>

    <div class="mb-6">
        <label class="block mb-2 uppercase font-bold text-xs text-grey-700" for="email">
            Email
        </label>
            
        <input class="border border-grey-400 p-2 w-full" type="email" name="email" id="email" value="{{ $user->email }}" required>
            
        @error('email')
            <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
        @enderror
            
    </div>
    <div class="mb-6 ">
        <label class="block mb-2 uppercase font-bold text-xs text-grey-700" for="avatar">
            Avatar
        </label>
        
        <div class="flex ">
            <input class="border border-grey-400 p-2 w-full" type="file" name="avatar" id="avatar"  >
            <img src="{{ $user->avatar }}" alt="Avatar" width="40px" >
        </div>
    </div>
    @error('name')
        <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
    @enderror

    <div class="mb-6">
        <label class="block mb-2 uppercase font-bold text-xs text-grey-700" for="password">
            Password
        </label>
                
        <input class="border border-grey-400 p-2 w-full" type="password" name="password" id="password" >    
        
        @error('password')
            <p class="text-red-500 text-xs mt-2">{{ $message }}</p>
        @enderror
                
    </div>

    <div class="mb-6">
        <label class="block mb-2 uppercase font-bold text-xs text-grey-700" for="password_confirmation">
            Password Confirm
        </label>
                
        <input class="border border-grey-400 p-2 w-full" type="password" name="password_confirmation" id="password_confirmation" required>
        
        @error('password_confirmation')
            <p class="text-red-500 text-xs mt-2 ">{{ $message }}</p>
        @enderror
    </div>

    <button type="submit" class="btn bg-blue-600 hover:bg-blue-800 px-4 py-2 rounded-lg text-white">Save</button>
    <button type="submit" class="btn bg-blue-600  hover:bg-blue-800 px-4 py-2 rounded-lg text-white"><a href="{{ $user->path() }}">Cancle</a></button>
</form>

@endsection