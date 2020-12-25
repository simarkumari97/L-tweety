<div class="flex p-4  {{ $loop->last?'':'border-b  border-b-gray-400'}}">
    <div class="mr-2 flex-shrink-0">
         <a href={{ route('profile',$tweet->user->name) }}>
            <img class="rounded-full mr-2" src="{{ $tweet->user->avatar}}" alt="avatar"
            style="width: 50px ;height:50px">
         </a>
    </div>

    <div>
     <h5 class="font-bold ">
        <a href={{ route('profile',$tweet->user->name) }}>
            {{ $tweet->user->name }}</h5>
        </a>
        {{-- <p class="text-xs text-gray-400 ">Time {{ $tweet->updated_at->format('H:i:s')}}</p> --}}
        <p class="text-xs text-gray-400 mb-2">{{ $tweet->created_at->diffForHumans()}}</p>
     <p class="text-sm">{{ $tweet->body }}</p>
    </div>
</div>
