<%--
  Created by IntelliJ IDEA.
  User: haiquach
  Date: 5/9/14
  Time: 9:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
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
        <li class="active">Message</li>
    </ul><!-- .breadcrumb -->

    <div class="nav-search" id="nav-search">
        <form class="form-search">
            <span class="input-icon">
                <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input"
                       autocomplete="off"/>
                <i class="icon-search nav-search-icon"></i>
            </span>
        </form>
    </div><!-- #nav-search -->
</div>

<div class="page-content">
<div class="page-header">
    <h1>
        Join & Payment Confirmation
        <small>
            <i class="icon-double-angle-right"></i>
            Payment Confirmation or Submit Join Request
        </small>
    </h1>
</div><!-- /.page-header -->

<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-header widget-header-blue widget-header-flat">
                        <h4 class="lighter">Sign Up Process</h4>
                    </div>

                    <div class="widget-body">
                        <div class="widget-main">
                            <g:form class="form-horizontal" controller="public" action="reqInvitation">
                                <input type="hidden" name="step" value="${step}"/>

                                <div id="fuelux-wizard" class="row-fluid" data-target="#step-container">
                                    <ul class="wizard-steps">
                                        <li data-target="#step1" <g:if test="${step == '1'}">class="active"</g:if>>
                                            <span class="step">1</span>
                                            <span class="title">Request Invitation</span>
                                        </li>

                                        <li data-target="#step2" <g:if test="${step == '2'}">class="active"</g:if>>
                                            <span class="step">2</span>
                                            <span class="title">Confirm Payment</span>
                                        </li>

                                        <li data-target="#step3" <g:if test="${step == '3'}">class="active"</g:if>>
                                            <span class="step">3</span>
                                            <span class="title">Payment Info</span>
                                        </li>

                                        <li data-target="#step4" <g:if test="${step == '4'}">class="active"</g:if>>
                                            <span class="step">4</span>
                                            <span class="title">Congratuation</span>
                                        </li>
                                    </ul>
                                </div>

                                <hr/>
                                <g:hasErrors bean="${bean}">
                                    <div class="errors">
                                        <g:renderErrors bean="${bean}" as="list"/>
                                    </div>
                                </g:hasErrors>
                                <div>
                                    <g:if test="${flash.message}">
                                        <h3 class="lighter block green">${flash.message}</h3>
                                    </g:if>
                                    <g:else>
                                        <h3 class="lighter block green">Enter the following information</h3>
                                    </g:else>
                                </div>

                                <hr/>

                                <div class="step-content row-fluid position-relative" id="step-container">

                                    <g:if test="${step == '1'}">
                                        <div class="step-pane active" id="step1">

                                            <div class="step-content">
                                                <label for="countryCode">Country</label>

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="icon-flag"></i>
                                                        <select class="form-control select2-input"
                                                                name="countryCode" data-available="US,AG,AU"
                                                                id="countryCode">
                                                            <option value="US">US</option>
                                                            <option value="AG">AG</option>
                                                            <option value="AU">AU</option>
                                                        </select>
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="step-content">
                                                <label for="phoneNumber">
                                                    Phone
                                                    <small class="text-warning">(999) 999-9999</small>
                                                </label>

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="icon-phone"></i>
                                                    </span>
                                                    <input class="form-control input-mask-phone" type="text"
                                                           id="phoneNumber" name="phoneNumber"/>
                                                </div>
                                            </div>

                                        </div>
                                    </g:if>

                                    <g:if test="${step == '2'}">
                                        <div class="step-pane active" id="step2">
                                            <div class="row-fluid">
                                                <div class="alert alert-success">
                                                    <button type="button" class="close" data-dismiss="alert">
                                                        <i class="icon-remove"></i>
                                                    </button>

                                                    <strong>
                                                        <i class="icon-ok"></i>
                                                        Well done!
                                                    </strong>

                                                    You successfully read this important alert message.
                                                    <br/>
                                                </div>

                                                <div class="alert alert-danger">
                                                    <button type="button" class="close" data-dismiss="alert">
                                                        <i class="icon-remove"></i>
                                                    </button>

                                                    <strong>
                                                        <i class="icon-remove"></i>
                                                        Oh snap!
                                                    </strong>

                                                    Change a few things up and try submitting again.
                                                    <br/>
                                                </div>

                                                <div class="alert alert-warning">
                                                    <button type="button" class="close" data-dismiss="alert">
                                                        <i class="icon-remove"></i>
                                                    </button>
                                                    <strong>Warning!</strong>

                                                    Best check yo self, you're not looking too good.
                                                    <br/>
                                                </div>

                                                <div class="alert alert-info">
                                                    <button type="button" class="close" data-dismiss="alert">
                                                        <i class="icon-remove"></i>
                                                    </button>
                                                    <strong>Heads up!</strong>

                                                    This alert needs your attention, but it's not super important.
                                                    <br/>
                                                </div>
                                            </div>
                                        </div>
                                    </g:if>

                                    <g:if test="${step == '3'}">
                                        <div class="step-pane active" id="step3">
                                            <div class="center">
                                                <h3 class="blue lighter">This is step 3</h3>
                                            </div>
                                        </div>
                                    </g:if>

                                    <g:if test="${step == '4'}">
                                        <div class="step-pane active" id="step4">
                                            <div class="center">
                                                <h3 class="green">Congrats!</h3>
                                                Your product is ready to ship! Click finish to continue!
                                            </div>
                                        </div>
                                    </g:if>
                                </div>

                                <hr/>

                                <div class="row-fluid wizard-actions">
                                    <button class="btn btn-prev">
                                        <i class="icon-arrow-left"></i>
                                        Prev
                                    </button>

                                    <button type="submit" class="btn btn-success btn-next" data-last="Finish ">
                                        Next
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
<script>
    $('.input-mask-phone').mask('(999) 999-9999');
</script>
</body>
</html>