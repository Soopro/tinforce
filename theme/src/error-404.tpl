{% include 'g.tpl' %}
{% include '_css.tpl' %}

<div id="wrapper">
  {% include '_header.tpl' %}
	<!-- Tagline -->
	<div class="container">
		<section class="jumbotron">
			<h1 class="title"
          sup-widget-text
          ng-model="meta.title"
          default="{{_('Error 404')}}"></h1>
		</section>
	</div>
	<!-- #Tagline -->
	<!-- Contents -->
	<div class="container">
		<article>
			<div sup-angular-wysiwyg
           ng-model="content"
           default="{{_('$_ERROR404')}}"></div>
		</article>
	</div>
	<!-- #Contents -->
	{% include '_footer.tpl' %}
</div>