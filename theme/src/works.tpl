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
			<h1 class="title" sup-editor-meta ng-model="meta.tagline"
       default="{{_('Works')}}">
      </h1>
			<a href="#" class="btn-list"></a>
		</section>
	</div>
	<!-- #Tagline -->
	<!-- Contents -->
	<div class="container">
		<section class="row">
			<div class="col-sm-4 col-xs-12 pull-right">
				<article>
					<header>
						<h5>{{meta.title}}</h5>
					</header>
					<div sup-editor-meta ng-model="meta.description"
           default="{{_('Description text here.')}}">
					</div>
					<ul class="metadata">
						<li>
							<p>{{meta.date_formatted || ''}}</p>
						</li>
						<li>
							<p sup-editor-meta ng-model="meta.task"
               default="{{_('Task status')}}"></p>
						</li>
						<li>
              <p>
                <a href="#" sup-editor-widget-button ng-model="meta.link">
                  {{meta.link.title || '&nbsp;&nbsp;&nbsp;' }}
                </a>
              </p>
						</li>
					</ul>
				</article>
			</div>
			<div class="col-sm-8 col-xs-12 pull-left">
				<aside>
      		<div sup-angular-wysiwyg="sup-editor" ng-model="content"
           default="{{_('$_CONTENT')}}"></div>
				</aside>
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