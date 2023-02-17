@extends("layouts.app")

@section('title',"Home")

@section("body")
<section class="homeSection">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2 col-12 homeLeft">
                <h5 class="my-2"><i class="fa fa-truck"></i> Categories</h5>
                <div class="categories">
                    <ul class="list-group">
                      @foreach ($categories as $category)
                        @php
                          $subcategories = getSubcategories($category->category);
                        @endphp
                        <li class="list-group-item
                        @if($subcategories->count() > 0)
                        dropdown
                        @endif
                        ">
                          <a class="nav-link
                          @if($subcategories->count() > 0)
                          dropdown-toggle
                          @endif
                          " href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            {{ ucfirst($category->category) }}
                          </a>
                          @if($subcategories->count() > 0)
                            <ul class="dropdown-menu">
                              @foreach ($subcategories as $subcat)
                              <li><a class="dropdown-item" href="{{ route("cat_subcat",
                              ["cat" => $category->category,
                              "subcat" => $subcat->subcategory]) }}">{{ ucfirst($subcat->subcategory) }}</a></li>
                              @endforeach
                            </ul>
                          @endif
                        </li>
                      @endforeach
                      </ul>
                </div>
            </div>

            <!-- Products -->
            <div class="col-md-10 col-12 homeRight" >
                <h5 class="my-2"><i class="fa fa-shop"></i> Products ({{ $products->total() }})</h5>
                @if (isset($cat))
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item" aria-current="page">{{ $cat }}</li>
                    <li class="breadcrumb-item" aria-current="page">{{ ucfirst($subcat->subcategory) }}</li>
                  </ol>
                </nav>
                @endif

                @if (request('key'))
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item" aria-current="page">You've Search :
                        <b>{{ request('key') }}</b>
                    </li>
                  </ol>
                </nav>
                @endif

                @if (count($products) == 0)
                    <div class="row">
                        <div class="col-md-12">
                            <h4>Sorry! No Product available on this keyword :)</h4>
                        </div>
                    </div>
                @endif
                <div class="row">
                    <!-- Single Product  -->
                    @foreach ($products as $product)
                    <div class="col-12 my-2 each_item" >
                        <div class="card">
                            <div class="card-body">
                                <div class="row g-0">
                                    <div class="col-md-4 product_img_box align-self-center ">
                                        <div class="product_img text-center">
                                            <img src="https://drobbomullo.com/images/{{ $product->image }}" class="img-fluid rounded-start main_img" alt="...">

                                        </div>
                                    </div>
                                    <div class="col-md-8 align-self-center product_details" >
                                      <div class="card-body">
                                        <div class="product_info">
                                            <h3>{{ $product->item_name }}</h3>
                                            <p>Weight/Quantity : {{ ucfirst($product->weight) }}</p>
                                        </div>
                                        <div class="shop_box ">
                                            <div class="shop">
                                                <img src="{{ asset('img/chal-dal.png') }}" alt="" class="shop_logo">
                                                <p><strong>৳ {{ $product->price->chaldal_price ?? "null" }}</strong></p>
                                                <a target="_blank" href="{{ $product->link->chaldal_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/paikari.png") }}" alt="" class="shop_logo">
                                                <p><strong>৳ {{ $product->price->paikaree_price ?? "null"}}</strong></p>
                                                <a target="_blank" href="{{ $product->link->paikaree_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/othoba.webp") }}" alt="" class="shop_logo">
                                                <p><strong>৳ {{ $product->price->othoba_price ?? "null"}}</strong></p>
                                                <a target="_blank" href="{{ $product->link->othoba_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/meena.png") }}" alt="" class="shop_logo">
                                                <p><strong>৳ {{ $product->price->meenaclick_price ?? "null" }}</strong></p>
                                                <a target="_blank" href="{{ $product->link->meenaclick_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/jogan.png") }}" alt="" class="shop_logo">
                                                <p><strong>৳ {{ $product->price->jogaan_price ?? "null"}}</strong></p>
                                                <a target="_blank" href="{{ $product->link->jogaan_link}}" class="btn-link">Buy</a>
                                            </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                            </div>
                        </div>
                    </div>
                    @endforeach

                    {{ $products->links() }}
                    <!-- Single Product End -->

                </div> <!-- Row End -->

            </div>
        </div>
    </div>
  </section>
@stop

@push('js')
    <script>

    </script>
@endpush
