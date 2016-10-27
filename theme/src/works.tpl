{% include 'g.tpl' %}
{% include '_css.tpl' %}

<div id="wrapper">
	{% include '_header.tpl' %}
	<!-- Tagline -->
	<div class="container">
		<section class="jumbotron">
			<h1 class="title"
          sup-widget-text
          ng-model="meta.tagline"
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
					<div sup-widget-text
               ng-model="meta.description"
               default="{{_('Description text here.')}}">
					</div>
					<ul class="metadata">
						<li>
							<p>{{meta.date|date_formatted}}</p>
						</li>
						<li>
							<p sup-widget-text
                 ng-model="meta.task"
                 default="{{_('Task status')}}"></p>
						</li>
						<li>
              <p>
                <a href="#"
                   sup-widget-button
                   ng-model="meta.link">
                  {{meta.link.title || _('Project link') }}
                </a>
              </p>
						</li>
					</ul>
				</article>
			</div>
			<div class="col-sm-8 col-xs-12 pull-left">
				<aside>
          <figure class="featured-img">
            <a class="lightbox-gallery"
               href="#">
              <img ng-src="{{meta.featured_img.src || g.default_img}}" />
            </a>
          </figure>
      		<div sup-angular-wysiwyg
               ng-model="content"
               default="{{_('$_CONTENT')}}"></div>
				</aside>
			</div>
		</section>
	</div>
	<!-- #Contents -->
	{% include '_footer.tpl' %}
</div>