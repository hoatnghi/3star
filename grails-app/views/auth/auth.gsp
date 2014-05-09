<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
</head>

<body>
	<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                	
                    
                   	<g:if test="${flash.message}">
                   		<div class="alert alert-danger">
       						<h3 class="panel-title">${flash.message}</h3>
     					</div>
                   	</g:if>
                   	<g:else>
                    	<div class="panel-heading">
                        	<h3 class="panel-title">Please Sign In</h3>
                        </div>
                    </g:else>
                    
                    <div class="panel-body">
						<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
							<fieldset>
				                <div class="form-group">
									<input type='text' class="form-control" placeholder="username" name='j_username' id='username' autofocus/>
								</div>
				
								<div class="form-group">
									<input type='password' class="form-control" placeholder="password" name='j_password' id='password'/>
								</div>
				
								<div class="checkbox">
									<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
									<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
								</div>
				
								<input type='submit' class="btn btn-lg btn-success btn-block" id="submit" value='${message(code: "springSecurity.login.button")}'/>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
