<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>দ্রব্যমূল্য.com | @yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <style>
    /*
        *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

section{
    padding: 40px 0;
}
.main_img{
    width: 50%;
}
.product_img_box{
    position: relative;
}
.product_title_box{
    background: #2c3e5089;
    color: #ecf0f1;
    text-align: center;
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    cursor: pointer;
    transition: .6s;
}
.product_title_box:hover {
    transform: scale(1.1);
}

.shop_logo{
    width: 100px;
    height: 30px;
}

.shop_box{
    display: flex;
    justify-content: space-around;
}
.product_info p{
    margin-bottom: 5px;
}
.shop p{
    margin-bottom: 0;
}
.shop img{
    margin-bottom: 10px;
}
footer{
    padding: 10px 0;
}
footer p{
    margin-bottom: 0;
}

@media (min-width:0) and (max-width:575px){
    section{
        padding: 10px 0;
    }
    .card-body{
        padding: 0 5px;
    }
    .shop_box{
    
        text-align: center;
        width: 100%;
        overflow-y: scroll;

    }
    .shop_logo{
        width: 60px;
        height: 20px;
    }
    .shop{
        border-top: 1px solid #ccc;
        padding: 4px 0;
    }

}

@media (min-width:575.1px) and (max-width:767px){


}

@media (min-width:767.1px) and (max-width:991px){

}
@media (min-width:991.1px) and (max-width:1200px){

}
*/
    </style>
    @stack('css')

  </head>
  <body>
    <div style="overflow:hidden">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
          <a class="navbar-brand" href="/">দ্রব্যমূল্য.com</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav mx-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/">দ্রব্যমূল্য</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">যোগাযোগ</a>
              </li>

            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>

      @yield('body')

      <footer class="bg-light text-center">
        <div class="container">
          <div class="row">
            <div class="col-12 col-md-6 ">
              <p class="p-0">Copyright - @ 2023 </p>
            </div>
            <div class=" col-12 col-md-6">
              <p class="p-0">Design and Developed by <a target="_blank" href="https://www.facebook.com/arshahin200">AR Shahin</a> </p>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    @stack('js')
  </body>
</html>
