<!DOCTYPE html>
<html class="min-h-screen" lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Animal Names</title>

    <!-- Icons -->
    <link rel="icon" href="images/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=berkshire-swash:400|cormorant-upright:300,400,500,600,700" rel="stylesheet" />

    <!-- Styles & Scripts -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="//unpkg.com/alpinejs" defer></script>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        laravel: "#111111",
                    },
                },
            },
        };
    </script>

</head>

<body>
    @include('_includes.nav.topnav')
    <div class="content mb-24 mx-12">
        @yield('content')

        <script src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>

    </div>
    <footer
        class="fixed bottom-0 left-0 w-full flex items-center justify-start font-bold bg-laravel text-white h-12 mt-24 opacity-90 md:justify-center">
        <p class="ml-2">Adam Varhegyi-Milos & Albert Csabai 2023</p>
    </footer>

    <x-flash-message />
</body>


</html>
