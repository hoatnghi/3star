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
                        <div class="well">
                            <h4>Verification</h4>
                            Please provide your information from the SMS invitation message you have received.
                        </div>

                        <div class="widget-header widget-header-blue widget-header-flat">
                            <h4 class="lighter">Sign Up Process</h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <div id="fuelux-wizard" class="row-fluid" data-target="#step-container">
                                    <ul class="wizard-steps">
                                        <li data-target="#step1" class="active">
                                            <span class="step">1</span>
                                            <span class="title">Verification</span>
                                        </li>

                                        <li data-target="#step2">
                                            <span class="step">2</span>
                                            <span class="title">Payment Info</span>
                                        </li>

                                        <li data-target="#step3">
                                            <span class="step">3</span>
                                            <span class="title">Congratuation</span>
                                        </li>
                                    </ul>
                                </div>
                                <hr/>

                                <g:hasErrors bean="${invitation}">
                                    <div class="errors">
                                        <g:renderErrors bean="${invitation}" as="list"/>
                                    </div>
                                </g:hasErrors>
                                <g:form class="form-horizontal">
                                    <div>
                                        <g:if test="${message}">
                                            <h3 class="lighter block red">${message}</h3>
                                        </g:if>
                                        <g:else>
                                            <h3 class="lighter block green">Enter the following information</h3>
                                        </g:else>
                                    </div>

                                    <hr/>

                                    <div class="step-content row-fluid position-relative" id="step-container">
                                        <div class="step-pane active" id="step1">
                                            <div class="step-content">
                                                <label for="country">
                                                    Your country
                                                </label>

                                                <g:select id="country" name="countryCode" keys="${[256, 254, 255]}"
                                                          from="${['Uganda', 'Kenya', 'Tanzania']}"
                                                          value="${invitation?.countryCode}"
                                                          data-placeholder="Choose a Country...">
                                                </g:select>
                                            </div>

                                            <div class="step-content">
                                                <label for="phoneNumber">
                                                    Your phone number
                                                </label>

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="icon-phone"></i>
                                                    </span>

                                                    <input class="form-control input-mask-phone"
                                                           placeholder="(999) 999-9999" type="text" id="phoneNumber"
                                                           name="phoneNumber" value="${invitation?.phoneNumber}"/>
                                                </div>
                                            </div>

                                            <div class="step-content">
                                                <label for="invitedBy">
                                                    What is the phone number that send invitation to you?
                                                </label>

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="icon-phone"></i>
                                                    </span>

                                                    <input class="form-control input-mask-phone"
                                                           placeholder="(999) 999-9999" type="text" id="invitedBy"
                                                           name="invitedBy"
                                                           value="${invitation?.invitedBy?.phoneNumber}"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <hr/>

                                    <div class="row-fluid wizard-actions">
                                        <button type="submit" id="_eventId_request" name="_eventId_request"
                                                class="btn btn-prev">
                                            <i class="icon-arrow-left"></i>
                                            Request Form
                                        </button>

                                        <button type="submit" id="_eventId_verify" name="_eventId_verify"
                                                class="btn btn-success btn-next" data-last="Finish ">
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