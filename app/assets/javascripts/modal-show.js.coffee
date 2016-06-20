class @ModalShow
  constructor: (selector, modal_selector) ->
    $(document).ready ->
      $(selector).on('click', ->
        $(modal_selector).fadeIn(300)
      )