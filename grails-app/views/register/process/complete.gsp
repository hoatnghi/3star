<%--
  Created by IntelliJ IDEA.
  User: haiquach
  Date: 5/9/14
  Time: 9:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Three Star Company - Register Process</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="breadcrumbs" id="breadcrumbs">
    <script type="text/javascript">
        try {
            ace.settings.check('breadcrumbs', 'fixed')
        } catch (e) {
        }
    </script>

    <ul class="breadcrumb">
        <li>
            <i class="icon-home home-icon"></i>
            <a href="${createLink(uri: '/')}">Home</a>
        </li>
        <li class="active">Register Process</li>
    </ul><!-- .breadcrumb -->

</div>

<div class="page-content">
    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-header widget-header-blue widget-header-flat">
                            <h4 class="lighter">Congratuation</h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <div id="fuelux-wizard" class="row-fluid" data-target="#step-container">
                                    <ul class="wizard-steps">
                                        <li data-target="#step1" class="active">
                                            <span class="step">1</span>
                                            <span class="title">Verification</span>
                                        </li>

                                        <li data-target="#step2" class="active">
                                            <span class="step">2</span>
                                            <span class="title">Payment Info</span>
                                        </li>

                                        <li data-target="#step3" class="active">
                                            <span class="step">3</span>
                                            <span class="title">Information</span>
                                        </li>

                                        <li data-target="#step4" class="active">
                                            <span class="step">4</span>
                                            <span class="title">Congratuation</span>
                                        </li>
                                    </ul>
                                </div>
                                <hr/>
                                <g:form class="form-horizontal">
                                    <div class="step-pane" id="step4">
                                        <div class="center">
                                            <h3 class="green">Congrats!</h3>
                                            Congratuation! You've completed the sign up process.
                                            Click Finish button to login to your pages.
                                        </div>
                                    </div>

                                    <div class="row-fluid wizard-actions center">

                                        <button type="submit" class="btn btn-success btn-next" id="_eventId_finish"
                                                name="_eventId_finish" data-last="Finish ">
                                            Finish
                                            <i class="icon-arrow-right icon-on-right"></i>
                                        </button>
                                    </div>
                                </g:form>
                            </div><!-- /widget-main -->
                        </div><!-- /widget-body -->
                    </div>
                </div>
            </div>
            <!-- PAGE CONTENT ENDS -->
        </div>
    </div>

</div>
</body>
</html>