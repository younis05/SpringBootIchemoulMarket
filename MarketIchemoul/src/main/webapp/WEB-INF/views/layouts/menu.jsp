

<nav  class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" >
  <a class="navbar-brand" href="#"><i class="fas fa-apple-alt" style="color:red;"></i> Ichemoul Market</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a  class="nav-link" href="${pageContext.request.contextPath}/home"> 
        <i class="fas fa-home"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Products</a>
      </li>
      <li class="nav-item dropdown">
        
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Information
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/customer/cus_register">Sign Up</a>
          <a class="dropdown-item" href="#">Full Product</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Other</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#" >Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#" >About</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0" action="/product/search" method="post">
      <input class="form-control mr-sm-2" name="keyword" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
    <ul class="navbar-nav mr-auto">
       
       <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/customer/login"><i class="fas fa-sign-in-alt" style="color:white;"></i> Login |</a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/customer/cus_register">Sign Up</a> 
      </li>
    </ul>
  </div>
</nav>


