@extends('layouts.app')

@section('content')
    <header class="mb-6 ">
        <div class=" relative ">
            <img src="../img/banner1.jpg" class="rounded-lg flex" alt="Your Cover"  style="width:698px;height:285px">

            <div>
                <img src="{{$user->avatar}}"
                class="rounded-full mr-2 absolute bottom-0 transform -translate-x-1/2 translate-y-1/2" alt="avatar"
                style="width:150px;left:50%;">
            </div>
        </div>
        <div class="flex justify-between items-center mb-6 mt-3">
            <div style="max-width:250px">
               <h2 class="font-bold text-xl "> {{ $user->name }}</h2>
               <p class="text-sm">Joined {{ $user->created_at->diffForHumans()}}</p>
            </div>

            <div class="flex">
                @if(auth()->user()->is($user))
                    <a href="{{ $user->path('edit') }}"><button type="submit" class=" rounded-full shadow py-2 px-4 text-black text-xs mr-2">Edit Profile</button></a>
                @else
                <form action="/profiles/{{ $user->name }}/follow" method="post">
                    @csrf
                    <button type="submit" class="bg-blue-500 rounded-full  py-2 px-4 text-white text-xs">
                        {{ auth()->user()->following($user)?'Unfollow':'Follow' }}
                    </button>
                </form>
                @endif
            </div>

        </div>
        <p class="text-sm">Use absolute to position an element outside of the normal flow of the document, causing neighboring elements to act as if the element doesn't exist.

            Offsets are calculated relative to the nearest parent that has a position other than static, and the element will act as a position reference for other absolutely positioned children.</p>
    </header>


    @if(auth()->user()->is($user))
  
        @include('_publish_tweet_panel')
    @endif
    @include('_timeline',['tweets'=>$user->tweets])

@endsection
