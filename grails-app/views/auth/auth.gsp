<html>
<head>
    <meta charset="utf-8"/>
    <title>Login Page - Three Star Company</title>

    <meta name="description" content="User login page"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Core CSS - Include with every page -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'font-awesome.min.css')}" rel="stylesheet">

    <!--[if IE 7]>
        <link href="${resource(dir: 'css', file: 'font-awesome-ie7.min.css')}" rel="stylesheet">
    <![endif]-->

    <!-- page specific plugin styles -->
    <link href="${resource(dir: 'css', file: 'jquery-ui-1.10.3.custom.min.css')}" rel="stylesheet">

    <!-- fonts -->
    <link href="${resource(dir: 'css', file: 'ace-fonts.css')}" rel="stylesheet">

    <!-- ace styles -->
    <link href="${resource(dir: 'css', file: 'ace.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'ace-rtl.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css', file: 'ace-skins.min.css')}" rel="stylesheet">

    <!--[if lte IE 8]>
        <link href="${resource(dir: 'css', file: 'ace-ie.min.css')}" rel="stylesheet">
    <![endif]-->

    <!-- ace settings handler -->
    <script src="${resource(dir: 'js', file: 'ace-extra.min.js')}"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="${resource(dir: 'js', file: 'html5shiv.js')}"></script>
        <script src="${resource(dir: 'js', file: 'respond.min.js')}"></script>
    <![endif]-->
</head>

<body class="login-layout">
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="icon-leaf green"></i>
                            <span class="red">Three Star</span>
                            <span class="white">Investment</span>
                        </h1>
                        <h4 class="blue">&copy; Company Name</h4>
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">

                                    <g:if test="${flash.message}">
                                        <h4 class="header red lighter bigger">
                                            <i class="icon-user"></i>${flash.message}
                                        </h4>
                                    </g:if>
                                    <g:else>
                                        <h4 class="header blue lighter bigger">
                                            <i class="icon-coffee green"></i>
                                            Please Enter Your Information
                                        </h4>
                                    </g:else>

                                    <div class="space-6"></div>

                                    <form action='${postUrl}' method='POST' id='loginForm' class='cssform'
                                          autocomplete='off'>
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type='text' class="form-control" placeholder="username"
                                                           name='j_username' id='username' autofocus/>
                                                    <i class="icon-user"></i>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type='password' class="form-control" placeholder="password"
                                                           name='j_password' id='password'/>
                                                    <i class="icon-lock"></i>
                                                </span>
                                            </label>

                                            <div class="space"></div>

                                            <div class="clearfix">
                                                <label class="inline">
                                                    <input type='checkbox' class='ace' name='${rememberMeParameter}'
                                                           id='remember_me'
                                                           <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                                    <span class="lbl">Remember Me</span>
                                                </label>

                                                <button type="submit"
                                                        class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="icon-key"></i>
                                                    ${message(code: "springSecurity.login.button")}
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                        </fieldset>
                                    </form>
                                </div><!-- /widget-main -->

                            </div><!-- /widget-body -->
                        </div><!-- /login-box -->

                    </div><!-- /position-relative -->
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div></div>
</div><!-- /.main-container -->

<!-- basic scripts -->
<!--[if !IE]> -->
<script type="text/javascript">
    var jquery203 = "${resource(dir: 'js', file: 'jquery-2.0.3.min.js')}";
    window.jQuery || document.write("<script src='" + jquery203 + "'>" + "<" + "/script>");
</script>
<!-- <![endif]-->

<!--[if IE]>
    <script type="text/javascript">
        var jquery1102 = "${resource(dir: 'js', file: 'jquery-1.10.2.min.js')}";
        window.jQuery || document.write("<script src='" + jquery1102 + "'>" + "<" + "/script>");
    </script>
    <![endif]-->

<script type="text/javascript">
    var jqueryMobile = "${resource(dir: 'js', file: 'jquery.mobile.custom.min.js')}";
    if ("ontouchend" in document) document.write("<script src='" + jqueryMobile + "'>" + "<" + "/script>");
</script>
<!-- inline scripts related to this page -->

<script type="text/javascript">
    function show_box(id) {
        jQuery('.widget-box.visible').removeClass('visible');
        jQuery('#' + id).addClass('visible');
    }
</script>
</body>
</html>
