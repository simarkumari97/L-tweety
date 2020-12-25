@extends('layouts.app')
<div class=" flex justify-center mx-auto">
    @section('content')
    <div class="container mx-auto flex justify-center">
        <div class="bg-gray-200 px-16 py-8 border border-gray-300 ">
                    <div class="font-bold text-lg mb-6">{{ __('Login') }}</div>               
                        <form method="POST" action="{{ route('login') }}">
                            @csrf

                            <div class="mb-6">
                                <label for="email" class="block mb-2 uppercase font-bold text-sm text-gray-700">{{ __('E-Mail Address') }}</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="border border-gray-400 w-full p-1 block
                                    @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

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
                                    <input id="password" type="password" class="border border-gray-400 w-full p-1 block @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-6">
                                <div class="col-md-6 offset-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                        <label class="form-check-label" for="remember">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="mb-2">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="px-6 py-3  rounded-lg text-white text-sm bg-blue-600">
                                        {{ __('Login') }}
                                    </button>

                                    @if (Route::has('password.request'))
                                        <a class="text-sm text-gray-500 pl-2" href="{{ route('password.request') }}">
                                            {{ __('Forgot Your Password?') }}
                                        </a>
                                    @endif
                                </div>
                            </div>
                        </form>
            </div>
        
        </div></div>
    </div>
    @endsection
