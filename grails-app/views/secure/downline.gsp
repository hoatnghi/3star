<!DOCTYPE html>
<html>
<head>
    <title>Three Star Company - Down Line</title>
    <meta name="layout" content="main"/>
    <style>
        td.details-control {
            background: no-repeat center center;
            cursor: pointer;
        }
        tr.shown td.details-control {
            background: no-repeat center center;
        }
    </style>
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

        <li class="active">Down Line</li>
    </ul><!-- .breadcrumb -->

</div>

<div class="page-content">
    <div class="page-header">
        <h1>
            Request Form
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="table-header">
                Down line view
            </div>

            <div class="table-responsive">
                <table id="requestList" class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th></th>
                        <th>
                            <i class="icon-user bigger-110 hidden-480"></i>
                            Username
                        </th>
                        <th>
                            <i class="icon-flag bigger-110 hidden-480"></i>
                            Country
                        </th>
                        <th>
                            <i class="icon-phone bigger-110 hidden-480"></i>
                            Phone Number
                        </th>
                    </tr>
                    </thead>

                    <tbody>
                    <g:each in="${lines}" var="l">
                        <tr>
                            <td class="details-control">
                                <i class="icon-folder-close blue"></i>
                            </td>
                            <td>${l.username}</td>
                            <td>${l.countryCode}</td>
                            <td>${l.phoneNumber}</td>
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


    $(document).ready(function () {
        var table = $('#requestList').dataTable();
        // Add event listener for opening and closing details
        $('#requestList tbody').on('click', 'td i.icon-folder-close', function () {
            this.removeClass('icon-folder-close').addClass('icon-folder-open');
        } );
        $('#requestList tbody').on('click', 'td i.icon-folder-open', function () {
            this.removeClass('icon-folder-open').addClass('icon-folder-close');
        } );
    });
</script>
</body>
</html>