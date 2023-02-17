<!doctype html>
<html lang="en">
  <head>
    <x-meta-info/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <x-style/>
    @stack('css')

  </head>
  <body>
    <div style="overflow:hidden">
        <x-navbar/>

      @yield('body')

     <x-footer/>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.3/axios.min.js"></script>

    @stack('js')

  </body>
</html>
