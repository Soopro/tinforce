<sup-set ng-model="g.default_logo"
         value="{{theme_url+'/styles/logo.png'}}"></sup-set>

<!-- Webfonts -->
<link ng-href='{{ theme_url }}/styles/fonts/lato.css'
 rel='stylesheet' type='text/css'>

<!-- Bootstrap core CSS -->
<link ng-href="{{ theme_url }}/libs/bootstrap/css/bootstrap.min.css"
 rel="stylesheet" type='text/css'>

<!-- Styles-->
<link ng-href="{{ theme_url }}/styles/style.css"
 rel="stylesheet" type='text/css'>

<style ng-bind="theme_meta.styles"></style>

<div id="wrapper">
	<!-- Header -->
	<header id="header" class="container">
		<div class="row">
			<div id="language" class="col-md-2 col-sm-2 pull-right"
       ng-if="translates">
				<a href="#" class="language-switcher-btn-disabled">
          <span class="language-switcher-text">{{_('Languages')}}</span>
        </a>
			</div>
			<div id="logo" class="col-sm-3">
				<a href="#">
          <img ng-src="{{site_meta.logo || g.default_logo}}" 
           alt="{{ site_meta.title }}" title="{{ site_meta.title }}" />
        </a>
			</div>

			<nav id="nav" class="col-md-4 col-sm-4">
				<ul>
					<li ng-repeat="nav in menu.primary">
              <a href="#" class="{{nav.meta.class}}">{{nav.title}}</a>
          </li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- #Header -->
	<!-- Tagline -->
	<div class="container">
		<section class="jumbotron">
			<h1 class="title" sup-widget-text ng-model="meta.title"
       default="{{_('Title')}}">
      </h1>
		</section>
	</div>
	<!-- #Tagline -->
	<!-- Contents -->
	<div class="container">
		<div sup-angular-wysiwyg ng-model="content"
     default="{{_('$_CONTENT')}}"></div>
	</div>
	<!-- #Contents -->
	<!-- Footer -->
	<footer class="container">
		<hr>
		<p id="cp">
		  <span ng-bind-html="site_meta.copyright"></span>
      <span ng-bind-html="site_meta.license"></span>
		</p>
	</footer>
	<!-- #Footer -->
</div>