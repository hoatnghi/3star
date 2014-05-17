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
                            <h4 class="lighter">Account Information</h4>
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

                                        <li data-target="#step4">
                                            <span class="step">4</span>
                                            <span class="title">Congratuation</span>
                                        </li>
                                    </ul>
                                </div>
                                <hr/>
                                <g:if test="${message}">
                                    <div class="well">
                                        <h3 class="lighter block red">${message}</h3>
                                    </div>
                                </g:if>
                                <g:hasErrors bean="${payments}">
                                    <div class="errors">
                                        <g:renderErrors bean="${payments}" as="list"/>
                                    </div>
                                </g:hasErrors>
                                <g:form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="country"> Country</label>

                                        <div class="col-sm-9">
                                            <g:select id="country" name="countryCode" keys="${[256, 254, 255]}"
                                                      from="${['Uganda', 'Kenya', 'Tanzania']}"
                                                      value="${invitation?.countryCode}"
                                                      disabled="true">
                                            </g:select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right" for="phoneNumber"> Phone Number</label>

                                        <div class="col-sm-9">
                                            <input disabled id="phoneNumber" name="phoneNumber" type="text" class="col-xs-10 col-sm-5" value="${invitation.phoneNumber}" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right">Verification Code</label>

                                        <div class="col-sm-9">
                                            <span class="input-icon">
                                                <input type="text" id="verifyCode" name="verifyCode" placeholder="Verification Code"/>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right">Username</label>

                                        <div class="col-sm-9">
                                            <span class="input-icon">
                                                <input type="text" id="username" name="username" placeholder="Username"/>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right">Password</label>

                                        <div class="col-sm-9">
                                            <span class="input-icon">
                                                <input type="password" id="password" name="password" placeholder="Password"/>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label no-padding-right">Re-enter Password</label>

                                        <div class="col-sm-9">
                                            <span class="input-icon">
                                                <input type="password" id="repassword" name="repassword" placeholder="re-enter password"/>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="row-fluid wizard-actions center">
                                        <button type="submit" class="btn btn-prev" id="_eventId_previous"
                                                name="_eventId_previous">
                                            <i class="icon-arrow-left"></i>
                                            Previous
                                        </button>

                                        <button type="submit" class="btn btn-success btn-next" id="_eventId_submit"
                                                name="_eventId_submit" data-last="Finish ">
                                            Submit
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