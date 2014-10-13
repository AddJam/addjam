---
---
$ ->
	$('.header .down').click (e)->
		e.preventDefault()
		$('html, body').animate({
			scrollTop: $('#team').offset().top
		});