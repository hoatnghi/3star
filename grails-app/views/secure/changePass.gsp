<%--
  Created by IntelliJ IDEA.
  User: haiquach
  Date: 5/9/14
  Time: 9:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Three Star Company</title>
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
        <li class="active">Change Password</li>
    </ul><!-- .breadcrumb -->

</div>

<div class="page-content">
    <div class="row">
        <div class="col-xs-8 center">
        <!-- PAGE CONTENT BEGINS -->
            <g:hasErrors bean="${invitation}">
                <div class="errors">
                    <g:renderErrors bean="${invitation}" as="list"/>
                </div>
            </g:hasErrors>
            <div>
                <g:if test="${flash.message}">
                    <h3 class="lighter block red">${flash.message}</h3>
                </g:if>
                <g:else>
                    <h3 class="lighter block green">Enter the following information</h3>
                </g:else>
            </div>
            <g:form class="form-horizontal" action="processPassword">
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="currPass">Current Password</label>

                    <div class="col-sm-9">
                        <input id="currPass" name="currPass" type="password" placeholder="Current Password"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="newPass">New Password</label>

                    <div class="col-sm-9">
                        <input id="newPass" name="newPass" type="password" placeholder="New Password"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="confirmPass">Confirm Password</label>

                    <div class="col-sm-9">
                        <input id="confirmPass" name="confirmPass" type="password" placeholder="Confirm Password"/>
                    </div>
                </div>
                <div class="clearfix form-actions">
                    <div class="col-md-offset-3 col-md-9">
                        <button class="btn btn-info" type="submit">
                            <i class="icon-ok bigger-110"></i>
                            Submit
                        </button>

                        &nbsp; &nbsp; &nbsp;
                        <button class="btn" type="reset">
                            <i class="icon-undo bigger-110"></i>
                            Reset
                        </button>
                    </div>
                </div>
            </g:form>
        <!-- PAGE CONTENT ENDS -->
        </div>
    </div>
</div>
</body>
</html>