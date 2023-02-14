@extends("layouts.app")

@section('title',"Home")

@section("body")
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-12">
                <h5 class="my-2">Categories</h5>
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
                          " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            {{ ucfirst($category->category) }}
                          </a>
                          @if($subcategories->count() > 0)
                            <ul class="dropdown-menu">
                              @foreach ($subcategories as $subcat)        
                              <li><a class="dropdown-item" target="_blank" href="#">{{ ucfirst($subcat->subcategory) }}</a></li>
                              @endforeach
                             
                            </ul>
                          @endif
                        </li>
                      @endforeach
                      </ul>
                </div>
            </div>

            <!-- Products -->
            <div class="col-md-10 col-12">
                <h5 class="my-2">Products</h5>
                <div class="row">
                    <!-- Single Product  -->
                    @foreach ($products as $product)
                    <div class="col-12 my-2">
                        <div class="card">
                            <div class="card-body">
                                <div class="row g-0">
                                    <div class="col-md-4 product_img_box align-self-center">
                                        <div class="product_img text-center">
                                            <img src="{{ asset('img/potato.jpeg') }}" class="img-fluid rounded-start main_img" alt="...">
                                        </div>
                                      <div class="product_title_box">
                                        {{-- <h3>{{ $product->item_name }}</h3>
                                        <p>Weight : {{ $product->weight }}</p> --}}
                                      </div>
                                    </div>
                                    <div class="col-md-8 align-self-center">
                                      <div class="card-body">
                                        <div class="product_info">
                                            <h3>{{ $product->item_name }}</h3>
                                            <p>Weight/Quantity : {{ ucfirst($product->weight) }}</p>
                                        </div>
                                        <div class="shop_box ">
                                            <div class="shop">
                                                <img src="{{ asset('img/chal-dal.png') }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ {{ $product->price->chaldal_price ?? "null" }}</strong></p>
                                                <a target="_blank" href="{{ $product->link->chaldal_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/paikari.png") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ {{ $product->price->paikaree_price ?? "null"}}</strong></p>
                                                <a target="_blank" href="{{ $product->link->paikaree_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/othoba.webp") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ {{ $product->price->othoba_price ?? "null"}}</strong></p>
                                                <a target="_blank" href="{{ $product->link->othoba_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/meena.png") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ {{ $product->price->meenaclick_price ?? "null" }}</strong></p>
                                                <a target="_blank" href="{{ $product->link->meenaclick_link}}" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/jogan.png") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ {{ $product->price->jogaan_price ?? "null"}}</strong></p>
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
                {{-- <nav aria-label="Page navigation example mt-3">
                    <ul class="pagination justify-content-center">
                      <li class="page-item disabled">
                        <a class="page-link">Previous</a>
                      </li>
                      <li class="page-item"><a class="page-link" target="_blank" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" target="_blank" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" target="_blank" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" target="_blank" href="#">Next</a>
                      </li>
                    </ul>
                  </nav> --}}
            </div>
        </div>
    </div>
  </section>
@stop

@push('js')
    <script>

    </script>
@endpush
