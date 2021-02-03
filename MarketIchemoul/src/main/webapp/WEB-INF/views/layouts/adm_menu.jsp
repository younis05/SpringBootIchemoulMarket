<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" style="background-color: #6F00D8;">
  <a class="navbar-brand" href="#"><i class="fas fa-apple-alt" style="color:red;"></i> Ichemoul Market</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/index">
        <i class="fas fa-home" ></i>Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/product/view">AllProduct</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/product/add">Add Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/customer/view">Customer</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/contact/view">Contacts</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="/product/search" method="post">
      <input class="form-control mr-sm-2" name="keyword" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
    <ul class="navbar-nav mr-auto">

    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          HI'${aname }</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/logout">Logout</a>
          <a class="dropdown-item" href="#">Test</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/changepassword">Change Password</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/admin/my-account">My Account</a>
        </div>
     </li>
     <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/logout">
        <i class="fas fa-sign-out-alt" style="color:white;"></i> Logout</a>
      </li>
     </ul>
  </div>
</nav>
