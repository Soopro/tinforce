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
          default="{{_('Title')}}">
      </h1>
		</section>
	</div>
	<!-- #Tagline -->
	<!-- Contents -->
	<div class="container">
		<div sup-angular-wysiwyg
         ng-model="content"
         default="{{_('$_CONTENT')}}"></div>
	</div>
	<!-- #Contents -->
	{% include '_footer.tpl' %}
</div>