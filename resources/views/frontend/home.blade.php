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
                        <li class="list-group-item " aria-disabled="true">
                            <a href="" class="btn-link">Food</a>
                        </li>
                        <li class="list-group-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Vegetables
                          </a>
                          <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Carrot</a></li>
                            <li><a class="dropdown-item" href="#">Cabbage</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Ladies Finger</a></li>
                          </ul>
                        </li>
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
                                        <div>
                                            <h3>{{ $product->item_name }}</h3>
                                            <p>Weight : {{ $product->weight }}</p>
                                        </div>
                                        <div class="shop_box ">
                                            <div class="shop">
                                                <img src="{{ asset('img/chal-dal.png') }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ 50.00</strong></p>
                                                <a href="" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/paikari.png") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ 20.00</strong></p>
                                                <a href="" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/othoba.webp") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ 10.00</strong></p>
                                                <a href="" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/meena.png") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ 10.00</strong></p>
                                                <a href="" class="btn-link">Buy</a>
                                            </div>
                                            <div class="shop">
                                                <img src="{{ asset("img/jogan.png") }}" alt="" class="shop_logo">
                                                <p>Price : <strong>৳ 20.00</strong></p>
                                                <a href="" class="btn-link">Buy</a>
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
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#">Next</a>
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
