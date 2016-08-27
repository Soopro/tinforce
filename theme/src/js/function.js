/**
TinForce Javascript
http://www.tinforce.com

Author:   redy
**/

if(navigator.languages && navigator.languages.length > 1){
  navigator_language = navigator.languages[0];
}else{
  navigator_language = navigator.language || navigator.userLanguage;
}

var userLang = navigator_language;
var userLocale = userLang.replace('-','_');

//fix old browser no console
if (!window.console) {
	window["console"] = {log: function(){}};
}

var language_texts = {
  "en":"Languages",
  "zh":"語言",
}

$(document).ready(function () {

	//Language Switcher
	$('.language-switcher-text')
  .each(function() {
    var lang = userLocale.split('_')[0] || 'en';
    for(var key in language_texts){
      if(key == lang){
        $(this).html(language_texts[key]);
      }
    }
	});

  $('.language-switcher-btn').click(function() {
    var lang_list = $(this).attr('href');
		$(lang_list).toggle(200);
		return false;
	});

	//Pagination
	if($('.works-list').length > 0){
    var work_list = $('.works-list');
    var work_item = $('.works-list figure')[0];
    var prepage = work_list.data('prepage') || 12;
    var app_id = work_list.data('app-id');
    var api_baseurl = work_list.data('api-baseurl');
    var paged = 0;

    function _thumbnail(src) {
      if (!src) {
        return ''
      };
      var pair = src.indexOf('?') > -1 ? '&' : '?';
      return src+pair+'thumbnail';
    }
    function refresh_list (paged){
      $ajax.get(api_baseurl, {paged: paged}, function(data){
        for(var i=0; i<data.contents.length; i++){
          var entry = data[i];
          var item = $(work_item).clone();
          item.('a').attr('href', entry.url);
          item.('figcaption').html(entry.title);
          if (!entry.featured_img){
            entry.featured_img = {};
          }
          item.('img').attr('src', _thumbnail(entry.featured_img.src));
          item.('img').attr('title', entry.featured_img.title);
          work_list.append(item);
        };
        if(data.paged < date.total_pages){
          $('.btn-more').show();
    		} else {
    		  $('.btn-more').hide();
    		};
      });
    }

    refresh_list(paged);

    $('.btn-more').click(function(e){
      paged += 1;
      refresh_list(paged);
      return false;
    });
	}

	//Lightbox
	$('.lightbox-gallery').each(function(){
		$(this).attr('data-lightbox','lightbox-gallery');
	});

	function resizeLightboxOverlay(){
		$("#lightboxOverlay").width($(document).width());
	}
	$(window).resize(function(){
		resizeLightboxOverlay();
	});


	//External links for _blank
	$('a[rel="external"]').each(function(){
		if(!$(this).data('target')){
			$(this).attr('target','_blank');
		}else{
			$(this).attr('target',$(this).data('target'));
		}
	});
});