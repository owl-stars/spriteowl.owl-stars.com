#= require jquery/jquery.js
#= require ajaxchimp/jquery.ajaxchimp
#= require flexslider/jquery.flexslider
#= require sass-bootstrap/js/collapse
#= require sass-bootstrap/js/transition
#= require sass-bootstrap/js/modal
#= require sass-bootstrap/js/tab

jQuery ->
  $(".flexslider").flexslider({animation:"slide"})

  $("#mailchimpform").ajaxChimp({url: "http://wejustdostuff.us7.list-manage.com/subscribe/post?u=9d88ce76bb9c9bb3bea3601f0&id=2e63c2f86c"})

  $(".tabbox .nav-tabs a").click((event) ->
    event.preventDefault()
    $(this).tab("show")
  )

	$(document).on("click", ".expandBox .title", (event) ->
    $target = $(event.currentTarget).parent()
    $target.toggleClass('active', !$target.hasClass('active'))
  )
