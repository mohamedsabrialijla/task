<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
   
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>hello cafe</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <meta name="_token" content="{{csrf_token()}}" />
  <!-- Favicons -->
 
  
  <link rel="stylesheet" type="text/css" href="{{mix('css/app.css')}}">
</head> 




    <body>
        <div id="app">
            <app></app>
        </div>
        




  <!-- Vendor JS Files -->
          <script type="text/javascript" src="{{mix('js/app.js')}}"></script>
    </body>
</html>
