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
            <g:form class="form-horizontal" action="sendInvitation">
                <div class="form-group">
                    <label for="country">Your country</label>

                    <g:select id="country" name="countryCode" keys="${[256, 254, 255]}"
                              from="${['Uganda', 'Kenya', 'Tanzania']}"
                              data-placeholder="Choose a Country...">
                    </g:select>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="phoneNumber">Phone Number</label>

                    <div class="col-sm-9">
                        <input class="form-control input-mask-phone" name="phoneNumber"
                               placeholder="(999) 999-9999" type="text" id="phoneNumber"/>
                    </div>
                </div>

                <div class="row-fluid wizard-actions">
                    <button type="submit" id="_eventId_verify" name="_eventId_verify"
                            class="btn btn-success btn-next" data-last="Finish ">
                        Sent
                        <i class="icon-envelope icon-on-right"></i>
                    </button>
                </div>
            </g:form>
            <!-- PAGE CONTENT ENDS -->
        </div>
    </div>

</div>
<script>
    $('.input-mask-phone').mask('(999) 999-9999');
</script>
</body>
</html>