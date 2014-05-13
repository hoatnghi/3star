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
            <i class="icon-text-width"></i>
            <span class="menu-text">Message</span>
        </g:link>
    </li>

    <li <g:if test="${profile}">class="active"</g:if>>
        <g:link controller="secure" action="profile">
            <i class="icon-list-alt"></i>
            <span class="menu-text">Profile</span>
        </g:link>
    </li>

    <li>
        <a href="calendar.html">
            <i class="icon-calendar"></i>

            <span class="menu-text">
                Calendar
                <span class="badge badge-transparent tooltip-error" title="2&nbsp;Important&nbsp;Events">
                    <i class="icon-warning-sign red bigger-130"></i>
                </span>
            </span>
        </a>
    </li>

    <li>
        <a href="gallery.html">
            <i class="icon-picture"></i>
            <span class="menu-text">Gallery</span>
        </a>
    </li>

    <li>
        <a href="#" class="dropdown-toggle">
            <i class="icon-tag"></i>
            <span class="menu-text">More Pages</span>

            <b class="arrow icon-angle-down"></b>
        </a>

        <ul class="submenu">
            <li>
                <a href="profile.html">
                    <i class="icon-double-angle-right"></i>
                    User Profile
                </a>
            </li>

            <li>
                <a href="inbox.html">
                    <i class="icon-double-angle-right"></i>
                    Inbox
                </a>
            </li>

            <li>
                <a href="pricing.html">
                    <i class="icon-double-angle-right"></i>
                    Pricing Tables
                </a>
            </li>

            <li>
                <a href="invoice.html">
                    <i class="icon-double-angle-right"></i>
                    Invoice
                </a>
            </li>

            <li>
                <a href="timeline.html">
                    <i class="icon-double-angle-right"></i>
                    Timeline
                </a>
            </li>

            <li>
                <a href="login.html">
                    <i class="icon-double-angle-right"></i>
                    Login &amp; Register
                </a>
            </li>
        </ul>
    </li>

    <li>
        <a href="#" class="dropdown-toggle">
            <i class="icon-file-alt"></i>

            <span class="menu-text">
                Other Pages
                <span class="badge badge-primary ">5</span>
            </span>

            <b class="arrow icon-angle-down"></b>
        </a>

        <ul class="submenu">
            <li>
                <a href="faq.html">
                    <i class="icon-double-angle-right"></i>
                    FAQ
                </a>
            </li>

            <li>
                <a href="error-404.html">
                    <i class="icon-double-angle-right"></i>
                    Error 404
                </a>
            </li>

            <li>
                <a href="error-500.html">
                    <i class="icon-double-angle-right"></i>
                    Error 500
                </a>
            </li>

            <li>
                <a href="grid.html">
                    <i class="icon-double-angle-right"></i>
                    Grid
                </a>
            </li>

            <li>
                <a href="blank.html">
                    <i class="icon-double-angle-right"></i>
                    Blank Page
                </a>
            </li>
        </ul>
    </li>
</ul><!-- /.nav-list -->
