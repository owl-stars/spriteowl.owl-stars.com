#= require jquery
#= require flexslider/jquery.flexslider



# ------ Init 

$(window).load ->
  $(".flexslider").flexslider animation: "slide"

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

