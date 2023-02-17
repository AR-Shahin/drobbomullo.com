<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>দ্রব্যমূল্য.com | @yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <style>

        .bg_red{
            background: #f1f3f4;
        }
        .list-group-item,.dropdown-menu{
            border: none;
            padding-bottom: 2px;
        }
        body{
             background: #fff;
        }

        ul{
            list-style: none;
        }

        .logo{
            width: 65px;
            /* height: 80px; */
        }
        nav li a.nav-link:hover{
            color: #74B945;
        }
        .searchingItems{
            cursor: pointer;
        }
        #searchKey,.searchBtn{
            background: transparent;
            border: 1px solid #74B945
        }
        .list-group-item{
            background: none;
            color: #fff;
        }
        .homeSection{
            /* background: #c7ecee; */
            padding: 0px;
        }
        .homeSection h5{
            padding-top: 10px;
        }
        .homeLeft{
            background: #f1f3f4;
            color: #597e5b;
        }
        .homeLeft h5{
            color: #74B945;
        }
        .homeLeft a{
            color: #74B945;
        }
        .homeLeft a:hover{
            color: #27ae60;
        }
        .homeLeft a.show{
            color: #E22427;
        }
        .homeRight h5{
            color: #74B945;
        }
        .active>.page-link, .page-link{
            color: #27ae60;
            /* border: 1px solid #27ae60; */
        }
        .active>.page-link, .page-link.active{
            color: #fff;
            background: #74B945;
            border: 1px solid transparent;
        }
        .active>.page-link:link{

        }
        .each_item .card-body , .product_details{
            /* background:  #78e08f5e; */
        }

        .card-body{
            /* background:  #78e08f5e; */

        }
        @media (min-width:0) and (max-width:575px){
            #searchValue{
                top: 21%;
                left: 0;
                right: 0;
            }
            .card-body{
                padding: 5px;

            }
        }
        </style>
    @stack('css')

  </head>
  <body>
    <div style="overflow:hidden">
    <nav class="navbar navbar-expand-lg bg-body--tertiary bg_red">
        <div class="container">
            <div>
                <a class="navbar-brand" href="/">
                  <img src="https://drobbomullo.com/images/logo-2.png" alt="" class="logo">
                  <img src="https://drobbomullo.com/images/side-logo.png" alt="" class="side_logo">
                </a>
            </div>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav mx-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="/">দ্রব্যমূল্য</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">যোগাযোগ</a>
              </li>

            </ul>
            <form class="d-flex" role="search" method="GET" action="{{ route('home') }}">
              <input class="form-control me-2" type="search" placeholder="Search Anything ..." aria-label="Search" id="searchKey" name="key" value="{{ request('key') }}">
              <button class="btn btn-outline-success searchBtn" type="submit">
                <i class="fa fa-search"></i>
              </button>
              {{-- <button class="btn btn-sm btn-outline-success" id="clearBtn" style="margin-left: 5px">
                <i class="fa fa-refresh"></i>
              </button> --}}
            </form>
          </div>
        </div>
      </nav>
      <ul id="searchValue">
        {{-- <li><span>Lorem ipsum dolor sit amet.</span></li>
        <li><span>Lorem ipsum dolor sit amet.</span></li>
        <li><span>Lorem ipsum dolor sit amet.</span></li> --}}
    </ul>

      @yield('body')

      <footer class="bg_red text-center">
        <div class="container">
          <div class="row">
            <div class="col-12 col-md-6 ">
              <p class="p-0">Copyright - @ {{ date('Y') }} </p>
            </div>
            <div class=" col-12 col-md-6">
              <p class="p-0">Design and Developed by <a target="_blank" href="https://www.facebook.com/arshahin200">AR Shahin</a> </p>
            </div>
          </div>
        </div>
      </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.3.3/axios.min.js"></script>
    {{-- <script>
        const log = (el = "Ok") => console.log(el);
        const base_url = window.location.origin;
        const base_url_admin = `${window.location.origin}/admin`;
        const $$ = (el) => document.querySelector(el);
        const searchKey = $$("#searchKey");
        const searchValue = $$("#searchValue");
        const clearBtn = $$("#clearBtn");
        searchValue.style.display = 'none';
        searchKey.addEventListener("keyup",async function() {
            let key = this.value;

            if(key){
                let url = `${base_url}/auto-search-product/${key}`;
                searchValue.style.display = 'block';
                try{
                    const response = await axios.get(url);
                    showData(response.data)
                }catch(err){
                    log(err)
                }
            }else{
                searchValue.style.display = 'none';
            }
        });
        const showData = (items) => {
            if(items.length === 0){
            let html = `<li><span>No Item Found!</span></li>`;
            searchValue.innerHTML = html;
            }else{
                let html = "";
                items.forEach(element => {
                    html += `<li><span class="searchingItems">${element.item_name}</span></li>`;
                    searchValue.innerHTML = html;
                });
                const searchingItems = document.querySelectorAll('.searchingItems');
                searchingItems.forEach(element => {
                    element.addEventListener("click", function(){
                        searchKey.value = element.innerText;
                        searchValue.style.display = 'none';
                    })
                })
            }
        }
        clearBtn.addEventListener("click",function(e){
            e.preventDefault();
            searchKey.value = "";
            searchValue.style.display = 'none';
        })
    </script> --}}
    @stack('js')

  </body>
</html>
