const mix = require('laravel-mix');

mix.js('resources/js/app.js', 'public/js')
    .postCss('resources/css/app.css', 'public/css', [
        require('tailwindcss'),
    ])
    .copy('node_modules/admin-lte/dist/css/adminlte.css', 'public/css/adminlte.css')
    .copy('node_modules/admin-lte/dist/js/adminlte.js', 'public/js/adminlte.js')
    .sass('resources/sass/app.scss', 'public/css');
