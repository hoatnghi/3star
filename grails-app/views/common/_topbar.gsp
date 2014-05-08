
 <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
     <div class="navbar-header pull-left">
         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
             <span class="sr-only">Toggle navigation</span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
             <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="">
		 	<i class="fa fa-star-o"></i>
		 	<i class="fa fa-star"></i>
		 	<i class="fa fa-star-o"></i>
		 </a>
     </div>
     <!-- /.navbar-header -->
     
     <!-- Collect the nav links, forms, and other content for toggling -->
     <div class="collapse navbar-collapse navbar-ex1-collapse">
         <ul class="nav navbar-nav navbar-left">
             <li><a href="about.html">About</a></li>
             <li><g:link controller="public" action="faq">FAQ</g:link>
             </li>
             <li><g:link controller="public" action="contact">Contact</g:link></li>
             <li class="dropdown">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
                 <ul class="dropdown-menu">
                     <li><a href="portfolio-1-col.html">1 Column Portfolio</a>
                     </li>
                     <li><a href="portfolio-2-col.html">2 Column Portfolio</a>
                     </li>
                     <li><a href="portfolio-3-col.html">3 Column Portfolio</a>
                     </li>
                     <li><a href="portfolio-4-col.html">4 Column Portfolio</a>
                     </li>
                     <li><a href="portfolio-item.html">Single Portfolio Item</a>
                     </li>
                 </ul>
             </li>
             <li class="dropdown">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                 <ul class="dropdown-menu">
                     <li><a href="blog-home-1.html">Blog Home 1</a>
                     </li>
                     <li><a href="blog-home-2.html">Blog Home 2</a>
                     </li>
                     <li><a href="blog-post.html">Blog Post</a>
                     </li>
                 </ul>
             </li>
             <li class="dropdown">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                 <ul class="dropdown-menu">
                     <li><a href="full-width.html">Full Width Page</a>
                     </li>
                     <li><a href="sidebar.html">Sidebar Page</a>
                     </li>
                     <li><a href="faq.html">FAQ</a>
                     </li>
                     <li><a href="404.html">404</a>
                     </li>
                     <li><a href="pricing.html">Pricing Table</a>
                     </li>
                 </ul>
             </li>
         </ul>
         
         <sec:ifLoggedIn>
         <ul class="nav navbar-nav navbar-right">
	         <li class="dropdown">
	             <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                 <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
	             </a>
	             <ul class="dropdown-menu dropdown-messages">
	                 <li>
	                     <a href="#">
	                         <div>
	                             <strong>John Smith</strong>
	                             <span class="pull-right text-muted">
	                                 <em>Yesterday</em>
	                             </span>
	                         </div>
	                         <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <strong>John Smith</strong>
	                             <span class="pull-right text-muted">
	                                 <em>Yesterday</em>
	                             </span>
	                         </div>
	                         <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <strong>John Smith</strong>
	                             <span class="pull-right text-muted">
	                                 <em>Yesterday</em>
	                             </span>
	                         </div>
	                         <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <g:link controller="secure" action="message" class="text-center">
	                         <strong>Read All Messages</strong>
	                         <i class="fa fa-angle-right"></i>
	                     </g:link>
	                 </li>
	             </ul>
	             <!-- /.dropdown-messages -->
	         </li>
	         <!-- /.dropdown -->
	         <li class="dropdown">
	             <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                 <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
	             </a>
	             <ul class="dropdown-menu dropdown-user">
	                 <li><g:link controller="secure" action="profile"><i class="fa fa-user fa-fw"></i> User Profile</g:link></li>
	                 <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
	                 <li class="divider"></li>
	                 <li><g:link controller="logout"><i class="fa fa-sign-out fa-fw"></i> Logout</g:link>
	                 </li>
	             </ul>
	             <!-- /.dropdown-user -->
	         </li>
	         <!-- /.dropdown -->
	     </ul>
	     </sec:ifLoggedIn>
	     <sec:ifNotLoggedIn>
	     	 <ul class="nav navbar-nav navbar-right">
		         <li class="dropdown">
		         	<g:link controller="login">Login</g:link>
		         </li>
	         </ul>
         </sec:ifNotLoggedIn>
	     
	     <!-- /.navbar-top-links -->
     </div>
 </nav>
