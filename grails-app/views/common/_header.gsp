<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="${createLink(uri: '/')}" class="navbar-brand">
                <small>
                    <i class="icon-star-empty"></i>
                    <i class="icon-star"></i>
                    <i class="icon-star-empty"></i>
                </small>
            </a><!-- /.brand -->
            <ul class="nav ace-nav pull-left">
                <li><g:link controller="public" action="about">About</g:link></li>
                <li><g:link controller="public" action="faq">FAQ</g:link></li>
                <li><g:link controller="public" action="contact">Contact</g:link></li>
                <li><g:link controller="public" action="join">Join</g:link></li>
            </ul>
        </div><!-- /.navbar-header -->

        <div class="navbar-header pull-right" role="navigation">
            <sec:ifLoggedIn>
                <ul class="nav ace-nav">
                    <li class="green">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope icon-animated-vertical"></i>
                            <span class="badge badge-success">5</span>
                        </a>

                        <ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                            <li class="dropdown-header">
                                <i class="icon-envelope-alt"></i>
                                5 Messages
                            </li>

                            <li>
                                <a href="#">
                                    <img src="${resource(dir: 'avatars', file: 'avatar.jpg')}" class="msg-photo"
                                         alt="Alex's Avatar"/>
                                    <span class="msg-body">
                                        <span class="msg-title">
                                            <span class="blue">Alex:</span>
                                            Ciao sociis natoque penatibus et auctor ...
                                        </span>

                                        <span class="msg-time">
                                            <i class="icon-time"></i>
                                            <span>a moment ago</span>
                                        </span>
                                    </span>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <img src="${resource(dir: 'avatars', file: 'avatar3.jpg')}" class="msg-photo"
                                         alt="Susan's Avatar"/>
                                    <span class="msg-body">
                                        <span class="msg-title">
                                            <span class="blue">Susan:</span>
                                            Vestibulum id ligula porta felis euismod ...
                                        </span>

                                        <span class="msg-time">
                                            <i class="icon-time"></i>
                                            <span>20 minutes ago</span>
                                        </span>
                                    </span>
                                </a>
                            </li>

                            <li>
                                <a href="#">
                                    <img src="${resource(dir: 'avatars', file: 'avatar4.jpg')}" class="msg-photo"
                                         alt="Bob's Avatar"/>
                                    <span class="msg-body">
                                        <span class="msg-title">
                                            <span class="blue">Bob:</span>
                                            Nullam quis risus eget urna mollis ornare ...
                                        </span>

                                        <span class="msg-time">
                                            <i class="icon-time"></i>
                                            <span>3:15 pm</span>
                                        </span>
                                    </span>
                                </a>
                            </li>

                            <li>
                                <g:link controller="secure" action="message">
                                    See all messages
                                    <i class="icon-arrow-right"></i>
                                </g:link>
                            </li>
                        </ul>
                    </li>

                    <li class="light-blue">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                            <img class="nav-user-photo" src="${resource(dir: 'avatars', file: 'user.jpg')}"
                                 alt="Jason's Photo"/>
                            <span class="user-info">
                                <small>Welcome,</small>
                                Jason
                            </span>

                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                            <li>
                                <a href="#">
                                    <i class="icon-cog"></i>
                                    Settings
                                </a>
                            </li>

                            <li>
                                <g:link controller="secure" action="profile">
                                    <i class="icon-user"></i>
                                    Profile
                                </g:link>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <g:link controller="logout">
                                    <i class="icon-off"></i>
                                    Logout
                                </g:link>
                            </li>
                        </ul>
                    </li>
                </ul><!-- /.ace-nav -->
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                <ul class="nav ace-nav">
                    <li class="light-blue">
                        <g:link controller="login">Login</g:link>
                    </li>
                    <li class="blue">
                        <g:link controller="public" action="register">Register</g:link>
                    </li>
                </ul>
            </sec:ifNotLoggedIn>
        </div><!-- /.navbar-header -->

    </div><!-- /.container -->
</div>

