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
        <li class="active">Send Request</li>
    </ul><!-- .breadcrumb -->

</div>

<div class="page-content">
    <div class="page-header">
        <h1>
            Request
            <small>
                <i class="icon-double-angle-right"></i>
                Sent your request to administration to process the sign in.
            </small>
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-sm-12">
            <g:eachError bean="${book}">
                <li><g:message error="${it}" /></li>
            </g:eachError>
            <div>
                <h3 class="lighter block green">
                    <g:if test="${bean}">
                        Your request has been sent to administrator for processing. We will contact you via SMS.
                    </g:if>
                    <g:else>
                        Enter the following information
                    </g:else>
                </h3>
            </div>
        </div>

        <div class="col-sm-5">
            <div class="widget-box">
                <div class="widget-header">
                    <h4>Request Form</h4>
                </div>

                <div class="widget-body">
                    <div class="widget-main no-padding">
                        <g:form controller="public" action="reqInvitation">
                            <fieldset>
                                <div>
                                    <label for="country">
                                        Your country
                                    </label>

                                    <select id="country" name="countryCode" data-placeholder="Choose a Country...">
                                        <option value="256">Uganda</option>
                                        <option value="254">Kenya</option>
                                        <option value="255">Tanzania</option>
                                    </select>
                                </div>

                                <div>
                                    <label for="phoneNumber">
                                        Your phone number
                                    </label>

                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="icon-phone"></i>
                                        </span>

                                        <input class="form-control input-mask-phone" placeholder="(999) 999-9999"
                                               type="text" id="phoneNumber" name="phoneNumber"/>
                                    </div>
                                </div>
                            </fieldset>

                            <div class="form-actions center">
                                <button type="submit" class="btn btn-sm btn-success">
                                    Submit
                                    <i class="icon-arrow-right icon-on-right bigger-110"></i>
                                </button>
                            </div>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-7">
        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery(function ($) {
        $('.input-mask-phone').mask('(999) 999-9999');
    });
</script>
</body>
</html>