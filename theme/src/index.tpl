{% include 'g.tpl' %}
{% include '_css.tpl' %}

<div id="wrapper">
	{% include '_header.tpl' %}
	<!-- Tagline -->
	<div class="container">
		<section class="jumbotron">
			<h1 sup-widget-text
          ng-model="meta.tagline"
          default="{{_('Tagline')}}">
      </h1>
		</section>
	</div>
	<!-- #Tagline -->
	<!-- Contents -->
	<div class="container">
		<section class="row works-list"
             sup-query="works"
             perpage="11"
             ng-model="query.portfolio">

      <figure class="col-md-3 col-sm-6 show"
              sup-widget-create
              type="works">
        <a href="#">
			    <figcaption>{{works.title}}</figcaption>
			    <img ng-src="{{g.default_img}}"/>
        </a>
			</figure>

      <figure class="col-md-3 col-sm-6 show"
              sup-widget-open="works"
              ng-repeat="works in query.portfolio.contents">
        <a href="#">
			    <figcaption>{{works.title}}</figcaption>
			    <img ng-src="{{works.featured_img.src | thumbnail}}"
               alt="{{works.title}}" />
        </a>
			</figure>
		</section>
		<section class="row">
			<div class="col-md-3 pull-right more">
				<a class="btn-more"
           href="#more">
          {{_('More')}}
        </a>
			</div>
		</section>
	</div>
	<!-- #Contents -->
	{% include '_footer.tpl' %}
</div>