@extends('layouts.app')
<div class=" flex justify-center mx-auto">
@section('content')
<div class="container  mx-auto flex justify-center ">
    <div class="bg-gray-200 px-20 py-8 border border-gray-300 rounded-lg">
                <div class="font-bold text-lg mb-6">{{ __('Register') }}</div>

                
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="mb-6">
                            <label for="name" class="block mb-2 uppercase font-bold text-sm text-gray-700">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="border border-gray-400 w-full p-1 @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-6">
                            <label for="email" class="block mb-2 uppercase font-bold text-sm text-gray-700">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="border border-gray-400 w-full p-1 @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-6">
                            <label for="password" class="block mb-2 uppercase font-bold text-sm text-gray-700">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="border border-gray-400 w-full p-1 @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-6">
                            <label for="password-confirm" class="block mb-2 uppercase font-bold text-sm text-gray-700">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="border border-gray-400 w-full p-1" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="px-6 py-3 text-sm bg-blue-600 text-white rounded-lg ">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
      
            </div>
        </div>
    </div>
</div>
@endsection
