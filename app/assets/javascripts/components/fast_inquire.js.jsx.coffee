@FastInquire = React.createClass

#  buttonClick: ()->
#    true


  render: ->
    modal='.fast_inquire'
    `<div className="content">

    <a className="close-btn" onClick={()=>{$('.modal-window.fast_inquire').fadeOut(300)}}></a>
    <div className="close-btn"></div>
      <p>Оставьте телефон и наши консультанты
        объяснят, как получить ТОП-10 бизнес-идей,<br />
        а также помогут подобрать лучшее для вас:</p>
      <label> Ваш телефон:</label>
      <input type="text" name="phone" placeholder="+7(932)111-14-08" onChange={this.phone_number}/>
    <div className="next">
      <button onClick={this.buttonClick} type="submit">{this.buttonClick} Отправить</button>
    </div>



    </div>`
