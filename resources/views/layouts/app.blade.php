<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:image" content="https://www.codeshikhi.org/logo/logo.png" />
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

        a.btn-link{
            color: #74B945;
        }
        .logo,.side_logo{
            width: 65px;
            /* height: 80px; */
        }
        .side_logo{
            margin-top: 15px;
            margin-left: -15px;
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
        .homeLeft .dropdown-menu a:active{
            background: transparent;
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
        <x-navbar/>



      @yield('body')

      <footer class="bg_red text-center">
        <div class="container">
          <div class="row">
            <div class="col-12 col-md-6 ">
              <p class="p-0">Copyright - @ {{ date('Y') }} </p>
            </div>
            <div class=" col-12 col-md-6">
              <p class="p-0">Design and Developed by <a class="btn-link" target="_blank" href="https://www.facebook.com/arshahin200">AR Shahin</a> </p>
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
