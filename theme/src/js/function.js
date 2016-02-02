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

var prepage = 12;
var paged = 1;

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
    prepage = $('.works-list').data('prepage');
    function refresh_list (){
  		$('.works-list > figure').each(function(idx, entry){
        console.log(idx, prepage * paged);
  			if(idx < prepage * paged){
  				$(entry).show();
  			}
  		});
      if($('.works-list > figure').length <= prepage * paged) {
        $('.btn-more').hide();
      }else{
        $('.btn-more').show();
      }
    }
		
    refresh_list();
    
    $('.btn-more').click(function(e){
      paged++;
      refresh_list();
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