<div class="border border-blue-400 rounded-lg px-8 py-6 mb-6 ">
    <form action="/tweets" method="POST">
        @csrf
        <textarea name="body" placeholder="What's up?" class="w-full outline-none" required=""></textarea>

        <hr class="my-4">

        <footer class="flex justify-between items-center">
            <img class="rounded-full mr-2" src="{{ auth()->user()->avatar }}" alt="avatar" style="width:40px;height:40px">
            <button type="submit" class="bg-blue-600 hover:bg-blue-800 rounded-lg shadow py-2 px-2 text-white">Tweet-a-roo!</button>
        </footer>

    </form>
@error('body')
    <p class="text-red-500 text-sm">{{ $message }}</p>
@enderror
</div>