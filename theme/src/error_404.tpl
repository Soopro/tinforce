<sup-set ng-model="g.default_logo"
         value="{{theme_url+'/styles/logo.png'}}"></sup-set>

<!-- Webfonts -->
<link ng-href='{{ theme_url }}/styles/fonts/webfonts.css'
 rel='stylesheet' type='text/css'>

<!-- Bootstrap core CSS -->
<link ng-href="{{ theme_url }}/libs/bootstrap/css/bootstrap.min.css"
 rel="stylesheet" type='text/css'>

<!-- Styles-->
<link ng-href="{{ theme_url }}/styles/style.css"
 rel="stylesheet" type='text/css'>
<link ng-href="{{ theme_url }}/styles/{{lang}}.css"
 rel="stylesheet" type='text/css'>

<div id="wrapper">
	<!-- Header -->
	<header id="header" class="container">
		<div class="row">
			<div id="language" class="col-md-2 col-sm-2 pull-right"
       ng-if="translates">
				<span id="language-switcher" class="language-switcher-btn-disabled">
          {{_('Languages')}}
        </span>
			</div>
			<div id="logo" class="col-sm-3">
				<a href="#">
          <img ng-src="{{site_meta.logo || g.default_logo}}" 
           alt="{{ site_meta.title }}" title="{{ site_meta.title }}" />
        </a>
			</div>

			<nav id="nav" class="col-md-4 col-sm-4">
				<ul>
					<li ng-repeat="item in menu.primary">
              <a href="#">{{item.title}}</a>
          </li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- #Header -->
	<!-- Tagline -->
	<div class="container">
		<section class="jumbotron">
			<h1 class="title" sup-editor-meta ng-model="meta.title"
      default="{{_('Error 404')}}"></h1>
		</section>
	</div>
	<!-- #Tagline -->
	<!-- Contents -->
	<div class="container">
		<article>
			<div sup-angular-wysiwyg="sup-editor" ng-model="content"
       default="{{_('$_ERROR404')}}"></div>
		</article>
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