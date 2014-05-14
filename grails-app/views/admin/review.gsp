<!DOCTYPE html>
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

        <li class="active">Review join request</li>
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
            Join Request
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->
            <h3 class="header smaller lighter blue">Join Request</h3>

            <div class="table-header">
                Results for "Latest Join Request"
            </div>

            <div class="table-responsive">
                <table id="requestList" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>Country</th>
                        <th>
                            <i class="icon-phone bigger-110 hidden-480"></i>
                            Phone Number
                        </th>
                        <th>
                            <i class="icon-user bigger-110 hidden-480"></i>
                            Invited By
                        </th>
                        <th>
                            <i class="icon-calendar bigger-110 hidden-480"></i>
                            Requested Date
                        </th>
                        <th class="hidden-480">Status</th>

                        <th></th>
                    </tr>
                    </thead>

                    <tbody>
                    <g:each in="${invitation}" var="req">
                        <tr id="_${req.phoneNumber}">
                            <td>${req.countryCode}</td>
                            <td>${req.phoneNumber}</td>
                            <td>${req.invitedBy}</td>
                            <td>${req.createdDate}</td>
                            <td class="hidden-480">
                                <span class="label label-sm label-warning">${req.status}</span>
                            </td>
                            <td>
                                <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                    <a id="approve.${req.phoneNumber}" class="blue" href="javascript:approve('${req.phoneNumber}');">
                                        <i class="icon-ok bigger-130"></i>
                                    </a>

                                    <a class="green" href="#">
                                        <i class="icon-pencil bigger-130"></i>
                                    </a>

                                    <a class="red" href="#">
                                        <i class="icon-trash bigger-130"></i>
                                    </a>
                                </div>

                                <div class="visible-xs visible-sm hidden-md hidden-lg">
                                    <div class="inline position-relative">
                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                                            <i class="icon-caret-down icon-only bigger-120"></i>
                                        </button>

                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                            <li>
                                                <a href="#" class="tooltip-info" data-rel="tooltip" title="Approve">
                                                    <span class="blue">
                                                        <i class="icon-zoom-in bigger-120"></i>
                                                    </span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                    <span class="green">
                                                        <i class="icon-edit bigger-120"></i>
                                                    </span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" class="tooltip-error" data-rel="tooltip" title="Decline">
                                                    <span class="red">
                                                        <i class="icon-trash bigger-120"></i>
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
            <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->
<script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.dataTables.bootstrap.js')}"></script>
<script type="text/javascript">
    function approve (phone) {
        var row = $('#_'+phone)[0];
        $.ajax({
            type: "POST",
            url: "${createLink(controller: "admin", action: "approveRequest")}",
            data: {phoneNumber: phone},
            error: function (data) {
                alert("There was a problem" + data);
            },
            success: function (data) {
                $('#requestList').dataTable().fnDeleteRow(row);
            }
        });
    }
</script>
</body>
</html>