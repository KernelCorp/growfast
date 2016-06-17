class @ModalShow
  constructor: (selector, modal_selector) ->
    $(document).ready ->
      $(selector).on('click', ->
        $(modal_selector).show()
      )

#      $(modal_selector + ' .modal-offset').on('click', ->
#        $(modal_selector).hide()
#        false
#      )
#
#      $(modal_selector + ' .modal-close-button').on('click', ->
#        $(modal_selector).hide()
#        false
#      )
#
#      $(modal_selector + ' .modal-content').on('click', ->
#        false
#      )
