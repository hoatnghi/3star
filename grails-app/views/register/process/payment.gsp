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

                                        <li data-target="#step2" class="active">
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

                                <div class="well">
                                    <h4>Verification</h4>
                                    Process to pay off the list of payment below:
                                </div>
                                <g:hasErrors bean="${payments}">
                                    <div class="errors">
                                        <g:renderErrors bean="${payments}" as="list"/>
                                    </div>
                                </g:hasErrors>

                                <div class="table-responsive">
                                    <table id="requestList" class="table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th>Pay to</th>
                                            <th>
                                                <i class="icon-phone bigger-110 hidden-480"></i>
                                                Phone Number
                                            </th>
                                            <th>
                                                <i class="icon-user bigger-110 hidden-480"></i>
                                                Amount
                                            </th>
                                            <th class="hidden-480">Status</th>

                                            <th></th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <g:each in="${payments}" var="p">
                                            <tr>
                                                <td>${p.payTo}</td>
                                                <td>
                                                    (${p.invitation.invitedBy.countryCode}) ${p.invitation.invitedBy.phoneNumber}
                                                </td>
                                                <td>${p.amount}</td>
                                                <td class="hidden-480">
                                                    <span class="label label-sm label-warning">${p.status}</span>
                                                </td>
                                                <td>
                                                    <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                                        <a class="blue" href="#">
                                                            <i class="icon-ok bigger-130"></i>
                                                        </a>
                                                    </div>

                                                    <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                        <div class="inline position-relative">
                                                            <button class="btn btn-minier btn-yellow dropdown-toggle"
                                                                    data-toggle="dropdown">
                                                                <i class="icon-caret-down icon-only bigger-120"></i>
                                                            </button>

                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a href="#" class="tooltip-info" data-rel="tooltip"
                                                                       title="Approve">
                                                                        <span class="blue">
                                                                            <i class="icon-zoom-in bigger-120"></i>
                                                                        </span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </g:each>
                                        </tbody>
                                    </table>
                                </div>
                                <g:form class="form-horizontal">
                                    <div class="row-fluid wizard-actions">
                                        <button type="submit" class="btn btn-prev" id="_eventId_verify"
                                                name="_eventId_verify">
                                            <i class="icon-arrow-left"></i>
                                            Prev
                                        </button>

                                        <button type="submit" class="btn btn-success btn-next" id="_eventId_confirm"
                                                name="_eventId_confirm" data-last="Finish ">
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
<script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.dataTables.bootstrap.js')}"></script>
<script type="text/javascript">
    function approve(phone) {
        var row = $('#_' + phone)[0];
        $.ajax({
            type: "POST",
            url: "${createLink(controller: "admin", action: "approveRequest")}",
            data: {phoneNumber: phone},
            error: function (data) {
                alert("There was a problem" + data);
            },
            success: function (data) {
                //$('#requestList').dataTable().fnDeleteRow(row);
            }
        });
    }

    $(document).ready(function () {
        $('#requestList').dataTable();
    });
</script>
</body>
</html>