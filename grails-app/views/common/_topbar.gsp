
 <div class="navbar-header pull-left">
	<a href="#" class="navbar-brand">
		<small>
			<i class="icon-leaf"></i>
			3 Star
		</small>
	</a><!-- /.brand -->
</div><!-- /.navbar-header -->

<div class="navbar-header pull-right" role="navigation">
	<ul class="nav ace-nav">
	<g:if test="${session.user}">
		<li class="grey">
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
				<i class="icon-tasks"></i>
				<span class="badge badge-grey">4</span>
			</a>

			<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
				<li class="dropdown-header">
					<i class="icon-ok"></i>
					4 Tasks to complete
				</li>

				<li>
					<a href="#">
						<div class="clearfix">
							<span class="pull-left">Software Update</span>
							<span class="pull-right">65%</span>
						</div>

						<div class="progress progress-mini ">
							<div style="width:65%" class="progress-bar "></div>
						</div>
					</a>
				</li>

				<li>
					<a href="#">
						<div class="clearfix">
							<span class="pull-left">Hardware Upgrade</span>
							<span class="pull-right">35%</span>
						</div>

						<div class="progress progress-mini ">
							<div style="width:35%" class="progress-bar progress-bar-danger"></div>
						</div>
					</a>
				</li>

				<li>
					<a href="#">
						<div class="clearfix">
							<span class="pull-left">Unit Testing</span>
							<span class="pull-right">15%</span>
						</div>

						<div class="progress progress-mini ">
							<div style="width:15%" class="progress-bar progress-bar-warning"></div>
						</div>
					</a>
				</li>

				<li>
					<a href="#">
						<div class="clearfix">
							<span class="pull-left">Bug Fixes</span>
							<span class="pull-right">90%</span>
						</div>

						<div class="progress progress-mini progress-striped active">
							<div style="width:90%" class="progress-bar progress-bar-success"></div>
						</div>
					</a>
				</li>

				<li>
					<a href="#">
						See tasks with details
						<i class="icon-arrow-right"></i>
					</a>
				</li>
			</ul>
		</li>

		<li class="purple">
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
				<i class="icon-bell-alt icon-animated-bell"></i>
				<span class="badge badge-important">8</span>
			</a>

			<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
				<li class="dropdown-header">
					<i class="icon-warning-sign"></i>
					8 Notifications
				</li>

				<li>
					<a href="#">
						<div class="clearfix">
							<span class="pull-left">
								<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
								New Comments
							</span>
							<span class="pull-right badge badge-info">+12</span>
						</div>
					</a>
				</li>

				<li>
					<a href="#">
						<i class="btn btn-xs btn-primary icon-user"></i>
						Bob just signed up as an editor ...
					</a>
				</li>

				<li>
					<a href="#">
						<div class="clearfix">
							<span class="pull-left">
								<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
								New Orders
							</span>
							<span class="pull-right badge badge-success">+8</span>
						</div>
					</a>
				</li>

				<li>
					<a href="#">
						<div class="clearfix">
							<span class="pull-left">
								<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
								Followers
							</span>
							<span class="pull-right badge badge-info">+11</span>
						</div>
					</a>
				</li>

				<li>
					<a href="#">
						See all notifications
						<i class="icon-arrow-right"></i>
					</a>
				</li>
			</ul>
		</li>

		<li class="green">
			<a data-toggle="dropdown" class="dropdown-toggle" href="#">
				<i class="icon-envelope icon-animated-vertical"></i>
				<span class="badge badge-success">5</span>
			</a>

			<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
				<li class="dropdown-header">
					<i class="icon-envelope-alt"></i>
					5 Messages
				</li>

				<li>
					<a href="#">
						<img src="assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
						<span class="msg-body">
							<span class="msg-title">
								<span class="blue">Alex:</span>
								Ciao sociis natoque penatibus et auctor ...
							</span>

							<span class="msg-time">
								<i class="icon-time"></i>
								<span>a moment ago</span>
							</span>
						</span>
					</a>
				</li>

				<li>
					<a href="#">
						<img src="assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
						<span class="msg-body">
							<span class="msg-title">
								<span class="blue">Susan:</span>
								Vestibulum id ligula porta felis euismod ...
							</span>

							<span class="msg-time">
								<i class="icon-time"></i>
								<span>20 minutes ago</span>
							</span>
						</span>
					</a>
				</li>

				<li>
					<a href="#">
						<img src="assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
						<span class="msg-body">
							<span class="msg-title">
								<span class="blue">Bob:</span>
								Nullam quis risus eget urna mollis ornare ...
							</span>

							<span class="msg-time">
								<i class="icon-time"></i>
								<span>3:15 pm</span>
							</span>
						</span>
					</a>
				</li>

				<li>
					<a href="inbox.html">
						See all messages
						<i class="icon-arrow-right"></i>
					</a>
				</li>
			</ul>
		</li>

		<li class="light-blue">
			<a data-toggle="dropdown" href="#" class="dropdown-toggle">
				<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
				<span class="user-info">
					<small>Welcome,</small>
					Jason
				</span>

				<i class="icon-caret-down"></i>
			</a>

			<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
				<li>
					<a href="#">
						<i class="icon-cog"></i>
						Settings
					</a>
				</li>

				<li>
					<a href="#">
						<i class="icon-user"></i>
						Profile
					</a>
				</li>

				<li class="divider"></li>

				<li>
					<a href="#">
						<i class="icon-off"></i>
						Logout
					</a>
				</li>
			</ul>
		</li>
	</g:if>
	<g:else>
         <li class="dropdown">
         	<g:link controller="user" action="login">Login</g:link>
         </li>
    </g:else>
    </ul><!-- /.ace-nav -->
</div><!-- /.navbar-header -->
     
     <!-- Collect the nav links, forms, and other content for toggling -->
     <div class="collapse navbar-collapse navbar-ex1-collapse">
         <ul class="nav navbar-nav navbar-left">
             <li><a href="about.html">About</a>
             </li>
             <li><a href="services.html">Services</a>
             </li>
             <li><a href="contact.php">Contact</a>
             </li>
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
                     <li><g:link controller="Public" action="faq">FAQ</g:link></li>
                     <li><a href="pricing.html">Pricing Table</a>
                     </li>
                 </ul>
             </li>
         </ul>
         
         <g:if test="${session.user}">
         <ul class="nav navbar-top-links navbar-right">
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
	                     <a class="text-center" href="#">
	                         <strong>Read All Messages</strong>
	                         <i class="fa fa-angle-right"></i>
	                     </a>
	                 </li>
	             </ul>
	             <!-- /.dropdown-messages -->
	         </li>
	         <!-- /.dropdown -->
	         <li class="dropdown">
	             <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                 <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
	             </a>
	             <ul class="dropdown-menu dropdown-tasks">
	                 <li>
	                     <a href="#">
	                         <div>
	                             <p>
	                                 <strong>Task 1</strong>
	                                 <span class="pull-right text-muted">40% Complete</span>
	                             </p>
	                             <div class="progress progress-striped active">
	                                 <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
	                                     <span class="sr-only">40% Complete (success)</span>
	                                 </div>
	                             </div>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <p>
	                                 <strong>Task 2</strong>
	                                 <span class="pull-right text-muted">20% Complete</span>
	                             </p>
	                             <div class="progress progress-striped active">
	                                 <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
	                                     <span class="sr-only">20% Complete</span>
	                                 </div>
	                             </div>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <p>
	                                 <strong>Task 3</strong>
	                                 <span class="pull-right text-muted">60% Complete</span>
	                             </p>
	                             <div class="progress progress-striped active">
	                                 <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
	                                     <span class="sr-only">60% Complete (warning)</span>
	                                 </div>
	                             </div>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <p>
	                                 <strong>Task 4</strong>
	                                 <span class="pull-right text-muted">80% Complete</span>
	                             </p>
	                             <div class="progress progress-striped active">
	                                 <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
	                                     <span class="sr-only">80% Complete (danger)</span>
	                                 </div>
	                             </div>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a class="text-center" href="#">
	                         <strong>See All Tasks</strong>
	                         <i class="fa fa-angle-right"></i>
	                     </a>
	                 </li>
	             </ul>
	             <!-- /.dropdown-tasks -->
	         </li>
	         <!-- /.dropdown -->
	         <li class="dropdown">
	             <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                 <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
	             </a>
	             <ul class="dropdown-menu dropdown-alerts">
	                 <li>
	                     <a href="#">
	                         <div>
	                             <i class="fa fa-comment fa-fw"></i> New Comment
	                             <span class="pull-right text-muted small">4 minutes ago</span>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <i class="fa fa-twitter fa-fw"></i> 3 New Followers
	                             <span class="pull-right text-muted small">12 minutes ago</span>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <i class="fa fa-envelope fa-fw"></i> Message Sent
	                             <span class="pull-right text-muted small">4 minutes ago</span>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <i class="fa fa-tasks fa-fw"></i> New Task
	                             <span class="pull-right text-muted small">4 minutes ago</span>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a href="#">
	                         <div>
	                             <i class="fa fa-upload fa-fw"></i> Server Rebooted
	                             <span class="pull-right text-muted small">4 minutes ago</span>
	                         </div>
	                     </a>
	                 </li>
	                 <li class="divider"></li>
	                 <li>
	                     <a class="text-center" href="#">
	                         <strong>See All Alerts</strong>
	                         <i class="fa fa-angle-right"></i>
	                     </a>
	                 </li>
	             </ul>
	             <!-- /.dropdown-alerts -->
	         </li>
	         <!-- /.dropdown -->
	         <li class="dropdown">
	             <a class="dropdown-toggle" data-toggle="dropdown" href="#">
	                 <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
	             </a>
	             <ul class="dropdown-menu dropdown-user">
	                 <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
	                 </li>
	                 <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
	                 </li>
	                 <li class="divider"></li>
	                 <li><g:link controller="user" action="logout"><i class="fa fa-sign-out fa-fw"></i> Logout</g:link>
	                 </li>
	             </ul>
	             <!-- /.dropdown-user -->
	         </li>
	         <!-- /.dropdown -->
	     </ul>
	     </g:if>
	     
	     <!-- /.navbar-top-links -->
     </div>
 </nav>
