#= require jquery/jquery.js
#= require ajaxchimp/jquery.ajaxchimp
#= require flexslider/jquery.flexslider
#= require easytabs/lib/jquery.easytabs



# ------ Init

UserVoice = window.UserVoice || [];
UserVoice.push(['showTab', 'classic_widget', {
  mode: 'full',
  primary_color: '#59371f',
  link_color: '#f6a818',
  default_mode: 'support',
  forum_id: 200882,
  tab_label: 'Feedback & Support',
  tab_color: '#cd1f1f',
  tab_position: 'middle-left',
  tab_inverted: false
}]);



$(window).load ->
  $(".flexslider").flexslider
    animation: "slide"

  $(".tabbox").easytabs()

  $("#mailchimpform").ajaxChimp
    callback: callbackChimp
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




callbackChimp = (resp) ->
  alert "sers"  if resp.result is "success"
