#= require jquery/jquery.js
#= require ajaxchimp/jquery.ajaxchimp
#= require sass-bootstrap/js/collapse
#= require sass-bootstrap/js/transition
#= require sass-bootstrap/js/modal
#= require sass-bootstrap/js/carousel
#= require sass-bootstrap/js/tab


jQuery ->
  $("#mailchimpform").ajaxChimp({url: "http://wejustdostuff.us7.list-manage.com/subscribe/post?u=9d88ce76bb9c9bb3bea3601f0&id=2e63c2f86c"})

  $(".carousel").carousel
    interval: 10000
  
  $(".tabbox .nav-tabs a").click((event) ->
    event.preventDefault()
    $(this).tab("show")
  )

	$(document).on("click", ".expandBox .title", (event) ->
    $target = $(event.currentTarget).parent()
    $target.toggleClass('active', !$target.hasClass('active'))
  )


(($) ->
  $.fn.visible = (partial) ->
    $t = $(this)
    $w = $(window)
    viewTop = $w.scrollTop()
    viewBottom = viewTop + $w.height()
    _top = $t.offset().top
    _bottom = _top + $t.height()
    compareTop = (if partial is true then _bottom else _top)
    compareBottom = (if partial is true then _top else _bottom)
    (compareBottom <= viewBottom) and (compareTop >= viewTop)
  return
) jQuery

win = $(window)
allMods = $(".slidemodule")
allMods.each (i, el) ->
  el = $(el)
  el.addClass "slidemodule-already-visible"  if el.visible(true)
  return

win.scroll (event) ->
  allMods.each (i, el) ->
    el = $(el)
    el.addClass "slidemodule-in"  if el.visible(true)
    return
  return

