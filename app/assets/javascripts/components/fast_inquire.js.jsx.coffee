@FastInquire = React.createClass
getInitialState: ->
  currentStep: 1

#  buttonClick: ()->
#    true

  buttonClick: ()->
    $.post
      url: @props.url
      data:
        inquire:
          name: 'не понял о чем речь'
          phone: @state.phone
          email: '-'
          business: '-'
          money: '-'
      dataType: 'json'
      success: =>
        @setState currentStep: 'success'
    true

  setPhone: (e) ->
    @setState phone: e.target.value

  render: ->
    switch @state.currentStep
      when 1
        modal='.fast_inquire'
        `<div className="content">

        <a className="close-btn" onClick={()=>{$('.modal-window.fast_inquire').fadeOut(300)}}></a>
        <div className="close-btn"></div>
          <p>Оставьте телефон и наши консультанты
            объяснят, как получить ТОП-10 бизнес-идей,<br />
            а также помогут подобрать лучшее для вас:</p>
          <label> Ваш телефон:</label>
          <input type="text" name="phone" placeholder="+7(932)111-14-08" onChange={this.setPhone}/>
        <div className="next">
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Отправить</button>
        </div>



        </div>`
      when 'success'
        stepTemplate = `
            <div className="content">
            <a className="close-btn" onClick={()=>{$('.modal-window.fast_inquire').fadeOut(300)}}></a>
            <p>В ближайшее время мы свяжемся с вами <br />
            для объяснения дальнейших действий.
            </div>`

      else
        `
            <div className="content">
            step not found
            </div>
        `