<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><g:layoutTitle default="Three Star Investment Company"/></title>

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

    <!-- ace settings handler -->
    <script src="${resource(dir: 'js', file: 'ace-extra.min.js')}"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
            <script src="${resource(dir: 'js', file: 'html5shiv.js')}"></script>
            <script src="${resource(dir: 'js', file: 'respond.min.js')}"></script>
        <![endif]-->

    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>
<div class="navbar navbar-default navbar-static-top">
    <div class="container">
        <g:render template="/common/header"/>
    </div>
</div>

<div class="main-container" id="main-container">
    <g:if test="${home}">
        <g:render template="/common/slider"/>
    </g:if>

    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <sec:ifLoggedIn>
            <a class="menu-toggler" id="menu-toggler" href="#">
                <span class="menu-text"></span>
            </a>

            <div class="sidebar" id="sidebar">
                <script type="text/javascript">
                    try {
                        ace.settings.check('sidebar', 'fixed')
                    } catch (e) {
                    }
                </script>

                <g:render template="/common/menu"/>

                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                       data-icon2="icon-double-angle-right"></i>
                </div>

                <script type="text/javascript">
                    try {
                        ace.settings.check('sidebar', 'collapsed')
                    } catch (e) {
                    }
                </script>
            </div>
        </sec:ifLoggedIn>

        <div class="main-content">
            <g:layoutBody/>
        </div><!-- /.main-content -->

    </div><!-- /.main-container-inner -->

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="icon-double-angle-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->
<script type="text/javascript">
    var jqueryMobile = "${resource(dir: 'js', file: 'jquery.mobile.custom.min.js')}";
    if ("ontouchend" in document) document.write("<script src='" + jqueryMobile + "'>" + "<" + "/script>");
</script>
<script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'typeahead-bs2.min.js')}"></script>

<!-- ace scripts -->
<script src="${resource(dir: 'js', file: 'ace-elements.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'ace.min.js')}"></script>
</body>
</html>
