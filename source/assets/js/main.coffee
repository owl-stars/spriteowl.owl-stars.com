#= require jquery/jquery.js
#= require ajaxchimp/jquery.ajaxchimp
#= require flexslider/jquery.flexslider
#= require easytabs/lib/jquery.easytabs
#= require sass-bootstrap/js/collapse
#= require sass-bootstrap/js/transition
#= require sass-bootstrap/js/modal
#= require sass-bootstrap/js/tab


# ------ Init

$(window).load ->
  $(".flexslider").flexslider
    animation: "slide"

  $("#mailchimpform").ajaxChimp
    url: "http://wejustdostuff.us7.list-manage.com/subscribe/post?u=9d88ce76bb9c9bb3bea3601f0&id=2e63c2f86c"

  $(".tabbox .nav-tabs a").click (e) ->
    e.preventDefault()
    $(this).tab "show"


$(document).ready ->
  window.spriteOwl = new SpriteOwl
  window.expandBox = new SpriteOwl.ExpandBox




# ------ SpriteOwl

SpriteOwl = ->



# ------ SpriteOwl.ExpandBox

SpriteOwl.ExpandBox = ->
	a = this
	$(document).on "click", ".expandBox .title", (event) ->
		a.clickHandler event

SpriteOwl.ExpandBox:: =
	clickHandler: (event) ->
		target = $(event.currentTarget)
		if(!target.parent().hasClass('active'))
			target.parent().addClass('active')
		else
			target.parent().removeClass('active')



