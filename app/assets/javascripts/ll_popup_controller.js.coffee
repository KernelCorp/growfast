class @LLPopupController
  constructor: ->
    $('#ll-popup-shadow').click @hide_modal
    $('.popup-link').click @show_modal
    $('.city-link').click @show_city
    $('#popup_shadow').click @hide_modal
    $('.close').click @hide_modal
    return

  show_modal: (e) ->
    e.preventDefault()
    $('#ll-popup-shadow').fadeIn('slow')
    $('#ll-popup').fadeIn('slow')
    $('#popup_shadow').fadeIn('slow')
    $('#popup_partner').fadeIn('slow')

  hide_modal: ->
    $('#ll-popup-shadow').hide()
    $('#ll-popup').hide()
    $('#popup_city').hide()
    $('#popup_shadow').hide()
    $('#popup_partner').hide()

  show_city: (e) ->
    e.preventDefault()
    $('#popup_shadow').fadeIn('slow')
    $('#popup_city').fadeIn('slow')