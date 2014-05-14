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
            Sending Request to Join
            <small>
                <i class="icon-double-angle-right"></i>
                Payment Confirmation or Submit Join Request
            </small>
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
    <div class="col-sm-12">
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
                                    <option value="AL">Uganda</option>
                                    <option value="AK">Alaska</option>
                                    <option value="AZ">Arizona</option>
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

                                    <input class="form-control input-mask-phone" placeholder="(999) 999-9999" type="text" id="phoneNumber" name="phoneNumber" />
                                </div>
                            </div>
                            <div>
                                <label for="invitedBy">
                                    What is the phone number that send inviation to you?
                                </label>

                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="icon-phone"></i>
                                    </span>

                                    <input class="form-control input-mask-phone" placeholder="(999) 999-9999" type="text" id="invitedBy" name="invitedBy" />
                                </div>
                            </div>
                        </fieldset>
                        <hr />
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
        <div class="widget-box">
            <div class="widget-header">
                <h4>Inline Forms</h4>
            </div>

            <div class="widget-body">
                <div class="widget-main">
                    <form class="form-inline">
                        <input type="text" class="input-small" placeholder="Username" />
                        <input type="password" class="input-small" placeholder="Password" />
                        <label class="inline">
                            <input type="checkbox" class="ace" />
                            <span class="lbl"> remember me</span>
                        </label>

                        <button type="button" class="btn btn-info btn-sm">
                            <i class="icon-key bigger-110"></i>
                            Login
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">
    jQuery(function($) {
        $('.input-mask-phone').mask('(999) 999-9999');
    });
</script>
</body>
</html>