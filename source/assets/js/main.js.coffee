#= require jquery/jquery.js
#= require sass-bootstrap/js/collapse
#= require sass-bootstrap/js/transition
#= require sass-bootstrap/js/modal
#= require sass-bootstrap/js/carousel
#= require sass-bootstrap/js/tab

jQuery ->
  $(".tabbox .nav-tabs a").click((event) ->
    event.preventDefault()
    $(this).tab("show")
  )

	$(document).on("click", ".expandBox .title", (event) ->
    $target = $(event.currentTarget).parent()
    $target.toggleClass('active', !$target.hasClass('active'))
  )

$(".downloadLink").on "click", ->
  _gaq.push [ "_trackEvent", "File", "download", "Spriteowl" ]

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

