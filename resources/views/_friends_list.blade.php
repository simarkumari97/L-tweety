<h3 class="font-bold text-xl mb-4" >Following</h3>
<ul>
    @forelse(auth()->user()->follows as $users)
    <li class="{{ $loop->last?'':'mb-4' }}">
        <div class="flex items-center text-sm overflow-hidden">
            <a href="{{ route('profile',$users) }}">
                <img class="rounded-full mr-2" src="{{ $users->avatar }}" alt="avatar"
                style="width: 40px ;height:40px">
                {{ $users->name }}
            </a>
        </div>

    </li>
    @empty
        <p class="">No Friends Yet!</p>
    @endforelse

</ul>
