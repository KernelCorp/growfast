@FastInquire = React.createClass
  getInitialState: ->
    currentStep: 1
    disableSubmit: false

#  buttonClick: ()->
#    true

  onSubmit: (e)->
    e.preventDefault();
    @setState disableSubmit: true
    $.post
      url: @props.url
      data:
        inquire:
          name: 'не понял о чем речь'
          phone: @state.phone
          email: '-'
          business: '-'
          money: '-'
          wagelvl: '-'
      dataType: 'json'
      success: =>
        @setState currentStep: 'success'
#    return true

  setPhone: (e) ->
    @setState phone: e.target.value

  render: ->
    switch @state.currentStep
      when 1
        stepTemplate =
          `<div className="content">

              <a className="close-btn" onClick={()=>{$('.modal-window.fast_inquire').fadeOut(300)}}></a>
          <div className="close-btn"></div>
              <p>Оставьте телефон и наши консультанты
          объяснят, как получить ТОП-10 бизнес-идей,<br />
          а также помогут подобрать лучшее для вас:</p>
          <label> Ваш телефон:</label>
          <input type="text" required name="phone" placeholder="+7(932)111-14-08" onChange={this.setPhone}/>
          </div>`
        unless this.state.disableSubmit
          buttonsTemplate = `
              <div className="next">
                  <button type="submit" disabled={this.state.disableSubmit}>Отправить</button>
              </div>
          `

      when 'success'
        stepTemplate = `
            <div className="content">
                <a className="close-btn" onClick={()=>{$('.modal-window.fast_inquire').fadeOut(300)}}></a>
            <p>В ближайшее время мы свяжемся с вами <br />
            для объяснения дальнейших действий.</p>
            </div>`

      else
        `
            <div className="content">
                step not found
            </div>
        `


        console.log stepTemplate

    `<div>

    <a className="close-btn" onClick={()=>{$('.modal-window.modal-steps').fadeOut(300)}}></a>
    <form onSubmit={this.onSubmit}>
    {stepTemplate}
    {buttonsTemplate}
    </form>
    </div>`