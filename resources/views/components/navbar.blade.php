
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
            <a class="nav-link" href="{{ route('contact') }}">যোগাযোগ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('offer') }}">অফার</a>
          </li>
        </ul>
        <form class="d-flex" role="search" method="GET" action="{{ route('home') }}">
          <input class="form-control me-2" type="search" placeholder="Search Anything ..." aria-label="Search" id="searchKey" name="key" value="{{ request('key') }}">
          <button class="btn btn-outline-success searchBtn" type="submit">
            <i class="fa fa-search"></i>
          </button>
        </form>
      </div>
    </div>
  </nav>
