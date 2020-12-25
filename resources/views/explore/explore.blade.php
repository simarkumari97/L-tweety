@extends('layouts.app')
@section( 'content')
<div>
    <ul>
    @foreach ($users as $user )
        <a href="{{ $user->path() }}">
            @if (auth()->user()->is($user))
                <li class="mb-2 border rounded-lg flex p-3">
                    <img src="{{ $user->avatar }}" alt="{{ $user->name }}'s Avatar" width="60" class="rounded-full">
                    <div class="pl-3 pt-2">
                        <h1 class="font-bold">{{ $user->name }}</h1>
                        <h2 class="text-gray-300">View my Profile</h2>
                    </div>
                </li>
            @else
                <li class="mb-2 border rounded-lg flex p-3">
                    <img src="{{ $user->avatar }}" alt="{{ $user->name }}'s Avatar" width="60" class="rounded-full">
                    <div class="pl-3 pt-2">
                        <h1 class="font-bold">{{ $user->name }}</h1>
                    </div>
                </li>
                
            @endif
        </a>
    @endforeach
    <ul>
</div>
{{ $users->links()  }}
@endsection
