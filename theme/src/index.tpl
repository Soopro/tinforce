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

<style ng-bind="theme_meta.styles"></style>

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
			<h1 sup-editor-meta ng-model="meta.tagline"
       default="{{_('Tagline')}}">
      </h1>
		</section>
	</div>
	<!-- #Tagline -->
	<!-- Contents -->
	<div class="container">
		<section class="row works-list" sup-editor-content-query
     fields="{type:'works'}"
     length="theme_meta.options.perpage"
     sortby="theme_meta.options.sortby"
     ng-model="query.works">
      <figure class="col-md-3 col-sm-6 show" sup-editor-open file="item"
       ng-repeat="item in query.works" ng-if="item.title && item.featured_img">
        <a href="#">
			    <figcaption>{{item.title}}</figcaption>
			    <img ng-src="{{item.featured_img.src | thumbnail}}"
           title="{{item.title}}" alt="{{item.title}}" />
        </a>
			</figure>
		</section>
		<section class="row">
			<div class="col-md-3 pull-right more">
				<a class="btn-more" href="#more" ontouchstart="btn-more-on">
          {{_('More')}}
        </a>
			</div>
		</section>
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