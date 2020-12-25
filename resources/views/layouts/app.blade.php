<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <section class="px-8 py-4 mb-6">
            <header class="container mx-auto">
                <h1><img src="/img/logo.svg" alt="tweety"></h1>
            </header>
        </section>
        <section class="px-8">
            <main class="container mx-auto ">
                <div class="lg:flex justify-between">
                    @auth
                        <div class="lg:w-32">
                            @include('_sidebar_links')
                        </div>
                    @endauth
                    <div class="lg:flex-1 lg:mx-10 my-3" style="max-width: 700px">
                       @yield('content')
                    </div>
                    @auth
                    <div class="lg:w-1/6  " style="">
                        <div class="rounded-lg p-4 mb-4 border border-gray-300 bg-gray-200">
                            @include('_friends_list')
                        </div>
                    </div>
                    @endauth
                </div>
            </main>
        </section>


    </div>
    <script src="http://unpkg.com/turbolinks"></script>
</body>
</html>
