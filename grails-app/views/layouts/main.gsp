<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta charset="utf-8">
	   	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title><g:layoutTitle default="Three Star Investment Company"/></title>
		
		<!-- Core CSS - Include with every page -->
	    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
	    <link href="${resource(dir: 'font-awesome/css', file: 'font-awesome.css')}" rel="stylesheet">
	
	    <!-- Page-Level Plugin CSS - Dashboard -->
	    <link href="${resource(dir: 'css/plugins/morris', file: 'morris-0.4.3.min.css')}" rel="stylesheet">
	    <link href="${resource(dir: 'css/plugins/timeline', file: 'timeline.css')}" rel="stylesheet">
	
	    <!-- SB Admin CSS - Include with every page -->
	    <link href="${resource(dir: 'css', file: '3star.css')}" rel="stylesheet">
	    <link href="${resource(dir: 'css', file: 'modern-business.css')}" rel="stylesheet">
	    
		<g:layoutHead/>
		<r:layoutResources />
	</head>

	<body>
	
		<div id="wrapper">
			<g:render template="/common/topbar" />
		</div>
		
		<div id="header">
			<g:render template="/common/header" />
		</div>
		
		<g:layoutBody/>
		
		<div>
			<g:render template="/common/footer"></g:render>
		</div>

	    <!-- Core Scripts - Include with every page -->
	    <script src="${resource(dir: 'js', file: 'jquery-1.10.2.js')}"></script>
	    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
	    <script src="${resource(dir: 'js/plugins/metisMenu', file: 'jquery.metisMenu.js')}"></script>
	
	    <!-- Page-Level Plugin Scripts - Dashboard -->
	    <script src="${resource(dir: 'js/plugins/morris', file: 'raphael-2.1.0.min.js')}"></script>
	    <script src="${resource(dir: 'js/plugins/morris', file: 'morris.js')}"></script>
	
	    <!-- SB Admin Scripts - Include with every page -->
	    <script src="js/sb-admin.js"></script>
	    <script src="${resource(dir: 'js', file: 'sb-admin.js')}"></script>
	    <script src="${resource(dir: 'js', file: 'modern-business.js')}"></script>
	
	    <!-- Page-Level Demo Scripts - Dashboard - Use for reference -->
	    <script src="${resource(dir: 'js/demo', file: 'dashboard-demo.js')}"></script>
	</body>
</html>
