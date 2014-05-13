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
                <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th class="center">
                            <label>
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </th>
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
                            <td class="center">
                                <label>
                                    <input type="checkbox" class="ace"/>
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td>${req.countryCode}</td>
                            <td>${req.phoneNumber}</td>
                            <td>${req.invitedBy}</td>
                            <td>${req.createdDate}</td>
                            <td class="hidden-480">
                                <span class="label label-sm label-warning">${req.status}</span>
                            </td>
                            <td>
                                <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                    <button class="blue" id="approve.${req.phoneNumber}">
                                        <i class="icon-ok-circle bigger-130"></i>
                                    </button>

                                    <button class="green">
                                        <i class="icon-pencil bigger-130"></i>
                                    </button>

                                    <button class="red">
                                        <i class="icon-trash bigger-130"></i>
                                    </button>
                                </div>

                                <div class="hide">
                                <!-- The async form to send and replace the modals content with its response -->
                                    <g:form id="form.${req.phoneNumber}" controller="admin" action="approveRequest"
                                            method="POST">
                                        <fieldset>
                                            <input type="hidden" name="phoneNumber" value="${req.phoneNumber}"/>
                                        </fieldset>
                                    </g:form>
                                </div>
                            </td>
                        </tr>

                        <script type="text/javascript">
                            jQuery(function ($) {
                                jQuery('#approve.${req.phoneNumber}').on('click', function () {
                                    alert('test')
                                    var form = $('#form.${req.phoneNumber}');
                                    var target = $('#_${req.phoneNumber}');
                                    $.ajax({
                                        type: $form.attr('method'),
                                        url: $form.attr('action'),
                                        data: $form.serialize(),

                                        success: function (data, status) {
                                            $target.html(data);
                                        }
                                    });
                                });
                            })
                        </script>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->

</body>
</html>