<div class="sidebar-shortcuts" id="sidebar-shortcuts">
    <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
        <button class="btn btn-success">
            <i class="icon-signal"></i>
        </button>

        <button class="btn btn-info">
            <i class="icon-pencil"></i>
        </button>

        <button class="btn btn-warning">
            <i class="icon-group"></i>
        </button>

        <button class="btn btn-danger">
            <i class="icon-cogs"></i>
        </button>
    </div>

    <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
        <span class="btn btn-success"></span>

        <span class="btn btn-info"></span>

        <span class="btn btn-warning"></span>

        <span class="btn btn-danger"></span>
    </div>
</div><!-- #sidebar-shortcuts -->

<ul class="nav nav-list">
    <li <g:if test="${dashboard}">class="active"</g:if>>
        <a href="index.html">
            <i class="icon-dashboard"></i>
            <span class="menu-text">Dashboard</span>
        </a>
    </li>

    <li <g:if test="${message}">class="active"</g:if>>
        <g:link controller="secure" action="message">
            <i class="icon-envelope"></i>
            <span class="menu-text">Message</span>
        </g:link>
    </li>

    <li <g:if test="${profile}">class="active"</g:if>>
        <g:link controller="secure" action="profile">
            <i class="icon-list-alt"></i>
            <span class="menu-text">Profile</span>
        </g:link>
    </li>
    <li <g:if test="${downline}">class="active"</g:if>>
        <g:link controller="secure" action="downline">
            <i class="icon-level-down"></i>
            <span class="menu-text">Down Line</span>
        </g:link>
    </li>
    <li <g:if test="${invite}">class="active"</g:if>>
        <g:link controller="secure" action="invite">
            <i class="icon-inbox"></i>
            <span class="menu-text">Invite</span>
        </g:link>
    </li>
    <sec:ifAnyGranted roles="ROLE_ADMIN">
    <li <g:if test="${review}">class="active"</g:if>>
        <g:link controller="admin" action="review">
            <i class="icon-archive"></i>
            <span class="menu-text">Request</span>
        </g:link>
    </li>
    </sec:ifAnyGranted>
</ul><!-- /.nav-list -->
