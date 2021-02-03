<a class="gotopbtn" id="topBtn" href="#"> <i class="fas fa-arrow-up"></i> </a>
<footer class="container-fluid text-center" >
  <p>© 2020 Ichemoul Market by Younes Boukhtache. All rights reserved.</p>
</footer>
<script type="text/javascript">$(document).ready(function(){

	  $(window).scroll(function(){
	    if($(this).scrollTop() > 40){
	      $('#topBtn').fadeIn();
	    } else{
	      $('#topBtn').fadeOut();
	    }
	  });

	  $("#topBtn").click(function(){
	    $('html ,body').animate({scrollTop : 0},500);
	  });
	});</script>

