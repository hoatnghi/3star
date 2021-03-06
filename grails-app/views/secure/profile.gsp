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

        <li class="active">User Profile</li>
    </ul><!-- .breadcrumb -->

</div>

<div class="page-content">
<div class="page-header">
    <h1>
        User Profile
    </h1>
</div><!-- /.page-header -->

<div class="row">
<div class="col-xs-12">
<!-- PAGE CONTENT BEGINS -->

<div class="clearfix">
    <div class="pull-left alert alert-success no-margin">
        <button type="button" class="close" data-dismiss="alert">
            <i class="icon-remove"></i>
        </button>

        <i class="icon-umbrella bigger-120 blue"></i>
        Click on the image below or on profile fields to edit them ...
    </div>
</div>

<div class="hr dotted"></div>

<div>
<div id="user-profile-1" class="user-profile row">
<div class="col-xs-12 col-sm-3 center">
    <div>
        <span class="profile-picture">
            <g:img dir="avatars" file="profile-pic.jpg" id="avatar" class="editable img-responsive"
                   alt="Alex's Avatar"/>
        </span>

        <div class="space-4"></div>

        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
            <div class="inline position-relative">
                <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
                    <i class="icon-circle light-green middle"></i>
                    &nbsp;
                    <span class="white">Alex M. Doe</span>
                </a>

                <ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
                    <li class="dropdown-header">Change Status</li>

                    <li>
                        <a href="#">
                            <i class="icon-circle green"></i>
                            &nbsp;
                            <span class="green">Available</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="icon-circle red"></i>
                            &nbsp;
                            <span class="red">Busy</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="icon-circle grey"></i>
                            &nbsp;
                            <span class="grey">Invisible</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="space-6"></div>

    <div class="profile-contact-info">
        <div class="profile-contact-links align-left">
            <a class="btn btn-link" href="#">
                <i class="icon-plus-sign bigger-120 green"></i>
                Add as a friend
            </a>

            <a class="btn btn-link" href="#">
                <i class="icon-envelope bigger-120 pink"></i>
                Send a message
            </a>

            <a class="btn btn-link" href="#">
                <i class="icon-globe bigger-125 blue"></i>
                www.alexdoe.com
            </a>
        </div>

        <div class="space-6"></div>

        <div class="profile-social-links center">
            <a href="#" class="tooltip-info" title="" data-original-title="Visit my Facebook">
                <i class="middle icon-facebook-sign icon-2x blue"></i>
            </a>

            <a href="#" class="tooltip-info" title="" data-original-title="Visit my Twitter">
                <i class="middle icon-twitter-sign icon-2x light-blue"></i>
            </a>

            <a href="#" class="tooltip-error" title="" data-original-title="Visit my Pinterest">
                <i class="middle icon-pinterest-sign icon-2x red"></i>
            </a>
        </div>
    </div>

    <div class="hr hr12 dotted"></div>

    <div class="clearfix">
        <div class="grid2">
            <span class="bigger-175 blue">25</span>

            <br/>
            Followers
        </div>

        <div class="grid2">
            <span class="bigger-175 blue">12</span>

            <br/>
            Following
        </div>
    </div>

    <div class="hr hr16 dotted"></div>
</div>

<div class="col-xs-12 col-sm-9">
<div class="center">
    <span class="btn btn-app btn-sm btn-light no-hover">
        <span class="line-height-1 bigger-170 blue">1,411</span>

        <br/>
        <span class="line-height-1 smaller-90">Views</span>
    </span>

    <span class="btn btn-app btn-sm btn-yellow no-hover">
        <span class="line-height-1 bigger-170">32</span>

        <br/>
        <span class="line-height-1 smaller-90">Followers</span>
    </span>

    <span class="btn btn-app btn-sm btn-pink no-hover">
        <span class="line-height-1 bigger-170">4</span>

        <br/>
        <span class="line-height-1 smaller-90">Projects</span>
    </span>

    <span class="btn btn-app btn-sm btn-grey no-hover">
        <span class="line-height-1 bigger-170">23</span>

        <br/>
        <span class="line-height-1 smaller-90">Reviews</span>
    </span>

    <span class="btn btn-app btn-sm btn-success no-hover">
        <span class="line-height-1 bigger-170">7</span>

        <br/>
        <span class="line-height-1 smaller-90">Albums</span>
    </span>

    <span class="btn btn-app btn-sm btn-primary no-hover">
        <span class="line-height-1 bigger-170">55</span>

        <br/>
        <span class="line-height-1 smaller-90">Contacts</span>
    </span>
</div>

<div class="space-12"></div>

<div class="profile-user-info profile-user-info-striped">
    <div class="profile-info-row">
        <div class="profile-info-name">Username</div>

        <div class="profile-info-value">
            <span class="editable" id="username">alexdoe</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name">Location</div>

        <div class="profile-info-value">
            <i class="icon-map-marker light-orange bigger-110"></i>
            <span class="editable" id="country">Netherlands</span>
            <span class="editable" id="city">Amsterdam</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name">Age</div>

        <div class="profile-info-value">
            <span class="editable" id="age">38</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name">Joined</div>

        <div class="profile-info-value">
            <span class="editable" id="signup">20/06/2010</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name">Last Online</div>

        <div class="profile-info-value">
            <span class="editable" id="login">3 hours ago</span>
        </div>
    </div>

    <div class="profile-info-row">
        <div class="profile-info-name">About Me</div>

        <div class="profile-info-value">
            <span class="editable" id="about">Editable as WYSIWYG</span>
        </div>
    </div>
</div>

<div class="space-20"></div>

<div class="widget-box transparent">
<div class="widget-header widget-header-small">
    <h4 class="blue smaller">
        <i class="icon-rss orange"></i>
        Recent Activities
    </h4>

    <div class="widget-toolbar action-buttons">
        <a href="#" data-action="reload">
            <i class="icon-refresh blue"></i>
        </a>

        &nbsp;
        <a href="#" class="pink">
            <i class="icon-trash"></i>
        </a>
    </div>
</div>

<div class="widget-body">
<div class="widget-main padding-8">
<div id="profile-feed-1" class="profile-feed">
<div class="profile-activity clearfix">
    <div>
        <g:img dir="avatars" file="avatar5.png" class="pull-left" alt="Alex Doe's avatar"/>
        <a class="user" href="#">Alex Doe</a>
        changed his profile photo.
        <a href="#">Take a look</a>

        <div class="time">
            <i class="icon-time bigger-110"></i>
            an hour ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <g:img dir="avatars" file="avatar1.png" class="pull-left" alt="Susan Smith's avatar"/>
        <a class="user" href="#">Susan Smith</a>

        is now friends with Alex Doe.
        <div class="time">
            <i class="icon-time bigger-110"></i>
            2 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <i class="pull-left thumbicon icon-ok btn-success no-hover"></i>
        <a class="user" href="#">Alex Doe</a>
        joined
        <a href="#">Country Music</a>

        group.
        <div class="time">
            <i class="icon-time bigger-110"></i>
            5 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <i class="pull-left thumbicon icon-picture btn-info no-hover"></i>
        <a class="user" href="#">Alex Doe</a>
        uploaded a new photo.
        <a href="#">Take a look</a>

        <div class="time">
            <i class="icon-time bigger-110"></i>
            5 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <g:img dir="avatars" file="avatar4.png" class="pull-left" alt="David Palms's avatar"/>
        <a class="user" href="#">David Palms</a>

        left a comment on Alex's wall.
        <div class="time">
            <i class="icon-time bigger-110"></i>
            8 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <i class="pull-left thumbicon icon-edit btn-pink no-hover"></i>
        <a class="user" href="#">Alex Doe</a>
        published a new blog post.
        <a href="#">Read now</a>

        <div class="time">
            <i class="icon-time bigger-110"></i>
            11 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <g:img class="pull-left" alt="Alex Doe's avatar" dir="avatars" file="avatar5.png"/>
        <a class="user" href="#">Alex Doe</a>

        upgraded his skills.
        <div class="time">
            <i class="icon-time bigger-110"></i>
            12 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <i class="pull-left thumbicon icon-key btn-info no-hover"></i>
        <a class="user" href="#">Alex Doe</a>

        logged in.
        <div class="time">
            <i class="icon-time bigger-110"></i>
            12 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <i class="pull-left thumbicon icon-off btn-inverse no-hover"></i>
        <a class="user" href="#">Alex Doe</a>

        logged out.
        <div class="time">
            <i class="icon-time bigger-110"></i>
            16 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>

<div class="profile-activity clearfix">
    <div>
        <i class="pull-left thumbicon icon-key btn-info no-hover"></i>
        <a class="user" href="#">Alex Doe</a>

        logged in.
        <div class="time">
            <i class="icon-time bigger-110"></i>
            16 hours ago
        </div>
    </div>

    <div class="tools action-buttons">
        <a href="#" class="blue">
            <i class="icon-pencil bigger-125"></i>
        </a>

        <a href="#" class="red">
            <i class="icon-remove bigger-125"></i>
        </a>
    </div>
</div>
</div>
</div>
</div>
</div>

<div class="hr hr2 hr-double"></div>

<div class="space-6"></div>

<div class="center">
    <a href="#" class="btn btn-sm btn-primary">
        <i class="icon-rss bigger-150 middle"></i>
        <span class="bigger-110">View more activities</span>

        <i class="icon-on-right icon-arrow-right"></i>
    </a>
</div>
</div>
</div>
</div>

<!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->

<!--[if lte IE 8]>
  <script src="${resource(dir: 'js', file: 'excanvas.min.js')}"></script>
<![endif]-->

<script src="${resource(dir: 'js', file: 'jquery-ui-1.10.3.custom.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.ui.touch-punch.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.gritter.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootbox.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.slimscroll.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.easy-pie-chart.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.hotkeys.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap-wysiwyg.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'select2.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap-datepicker.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'fuelux.spinner.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap-editable.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'ace-editable.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.maskedinput.min.js')}"></script>

</body>
</html>