#= require jquery/jquery.js
#= require ajaxchimp/jquery.ajaxchimp
#= require flexslider/jquery.flexslider
#= require easytabs/lib/jquery.easytabs



# ------ Init

$(window).load ->
  $(".flexslider").flexslider
    animation: "slide"

  $(".tabbox").easytabs()

  $("#mailchimpform").ajaxChimp
    #callback: callbackChimp
    url: "http://wejustdostuff.us7.list-manage.com/subscribe/post?u=9d88ce76bb9c9bb3bea3601f0&id=1e7429d7b8"


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




#callbackChimp = (resp) ->
#  alert "sers"  if resp.result is "success"
