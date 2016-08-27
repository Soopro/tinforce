<!-- Header -->
<header id="header"
        class="container">
	<div class="row">
		<div id="language"
         class="col-md-2 col-sm-2 pull-right"
         ng-if="translates">
			<a href="#"
         class="language-switcher-btn-disabled">
        <span class="language-switcher-text">{{_('Languages')}}</span>
      </a>
		</div>
		<div id="logo"
         class="col-sm-3">
			<a href="#">
        <img ng-src="{{site_meta.logo || g.default_logo}}"
             alt="{{ site_meta.title }}"/>
      </a>
		</div>

		<nav id="nav"
         class="col-md-4 col-sm-4">
			<ul>
				<li class="{{nav.meta.class}}"
            ng-repeat="nav in menu.primary">
            <a href="#">{{nav.title}}</a>
        </li>
			</ul>
		</nav>
	</div>
</header>
<!-- #Header -->
