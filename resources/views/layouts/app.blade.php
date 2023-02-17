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
             background: #f1f3f4;
        }

        ul{
            list-style: none;
        }
        .logo{
            width: 65px;
            /* height: 80px; */
        }
        .searchingItems{
            cursor: pointer;
        }

        .homeSection{
            background: #c7ecee;
            padding: 0px;
        }
        .homeSection h5{
            padding-top: 10px;
        }
        .homeLeft{
            background: #dff9fb;
            border-radius: 5px;
        }
        .homeRight{

        }
        .each_item .card-body , .product_details{
            /* background:  #78e08f5e; */
        }
        #searchKey,.searchBtn{
            background: transparent;
            border: 1px solid #DFF9FA
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
    <style>
        /*
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
   background: #fceebde8;
}
.bg_red{
    background: #FF686D;
}
section{
    padding: 40px 0;
}
.main_img{
    width: 50%;
    transition: .6s;
}
.product_img_box:hover .main_img{
    transform: scale(1.2);
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
    <nav class="navbar navbar-expand-lg bg-body--tertiary bg_red">
        <div class="container">
          <a class="navbar-brand" href="/">
            <img src="https://drobbomullo.com/images/logo-2.png" alt="" class="logo">
            </a>
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
