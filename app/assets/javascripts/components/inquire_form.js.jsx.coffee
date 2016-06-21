@InquireForm = React.createClass
  getInitialState: ->
    currentStep: 1

  buttonClick: ()->
    if @state.currentStep == 5
      $.post
        url: @props.url
        data:
          inquire:
            name: @state.name
            phone: @state.phone
            email: @state.email
            business: @state.business
            money: @state.money
        dataType: 'json'
        success: =>
          @setState currentStep: 'success'
    else
      newStep =  @state.currentStep + 1
      @setState currentStep: newStep
    true

  setWageLvl: (e) ->
#    console.log 'switch'
    @setState wageLvl: e.target.value

  setBusinessType: (e) ->
    @setState business: e.target.value

  setMoney: (e) ->
    @setState money: e.target.value

  setName: (e) ->
    @setState name: e.target.value

  setEmail: (e) ->
    @setState email: e.target.value

  setPhone: (e) ->
    @setState phone: e.target.value

  render: ->
    switch @state.currentStep
      when 1
        stepTemplate = `
        <div className="content">
          <div className="top"  >
          Тогда ответьте на три вопроса, чтобы мы актуализировали идеи под ваши интересы:
              </div>
          <ul className="questions">
          <li className={this.state.currentStep == 1 ? 'active' : null}>1 Вопрос</li>
          <li className={this.state.currentStep == 2 ? 'active' : null}>2 Вопрос</li>
          <li className={this.state.currentStep == 3 ? 'active' : null}>3 Вопрос</li>
          </ul>
          <p>На какой уровень заработка вы ориентируетесь:</p>

          <ul className="price-list">
            <li>
              <input type="radio" name="wage_lvl" value="30" className="radio" id="radio1" checked={this.state.wageLvl == 30} onChange={this.setWageLvl}/>
              <label htmlFor="radio1">от 30 тыс. р.</label>
            </li>
            <li>
              <input type="radio" name="wage_lvl" value="70" className="radio" id="radio2" onChange={this.setWageLvl}/>
              <label htmlFor="radio2">от 70 тыс. р.</label>
            </li>
            <li>
              <input type="radio" name="wage_lvl" value="100" className="radio" id="radio3" onChange={this.setWageLvl}/>
              <label htmlFor="radio3">от 100 тыс. р.</label>
            </li>
            <li>
              <input type="radio" name="wage_lvl" value="500" className="radio" id="radio4" onChange={this.setWageLvl}/>
              <label htmlFor="radio4">от 500 тыс. р.</label>
            </li>
          </ul>
        </div>

        `
        buttonsTemplate = `
            <div className="next">
            <button onClick={this.buttonClick} type="submit">{this.buttonClick} Далее</button>
            </div>
        `
      when 2
        stepTemplate = `
          <div className="content">
          <div className="top"  >
          2 вопрос
              </div>
          <ul className="questions">
          <li className={this.state.currentStep == 1 ? 'active' : null}>1 Вопрос</li>
          <li className={this.state.currentStep == 2 ? 'active' : null}>2 Вопрос</li>
          <li className={this.state.currentStep == 3 ? 'active' : null}>3 Вопрос</li>
          </ul>
          <p>В какой сфере бизнес вам наиболее интересен:</p>
          <input type="text" name="business_type" onChange={this.setBusinessType}/>

        </div>
        `
        buttonsTemplate = `
          <div className="next">
          <button onClick={this.buttonClick} className='dontknow' type="submit">{this.buttonClick} Не знаю</button>
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Далее</button>
          </div>
        `
      when 3
        stepTemplate = `
          <div className="content">
          <div className="top"  >
          3 вопрос
              </div>
          <ul className="questions">
          <li className={this.state.currentStep == 1 ? 'active' : null}>1 Вопрос</li>
          <li className={this.state.currentStep == 2 ? 'active' : null}>2 Вопрос</li>
          <li className={this.state.currentStep == 3 ? 'active' : null}>3 Вопрос</li>
          </ul>
          <p>Какую сумму вы планируете инвестировать <br />на старт
          собственного дела:</p>

            <ul className="price-list">
              <li>
              <input type="radio" name="money" value="30" className="radio" id="radio1" checked={this.state.money == 30} onChange={this.setMoney}/>
              <label htmlFor="radio1">Ищу подработку (то есть «0»)</label>
              </li>
              <li>
              <input type="radio" name="money" value="70" className="radio" id="radio2" onChange={this.setMoney}/>
              <label htmlFor="radio2">от 30-50 тыс р.</label>
              </li>
              <li>
              <input type="radio" name="money" value="100" className="radio" id="radio3" onChange={this.setMoney}/>
              <label htmlFor="radio3">от 50-100 тыс р.</label>
              </li>
              <li>
              <input type="radio" name="money" value="500" className="radio" id="radio4" onChange={this.setMoney}/>
              <label htmlFor="radio4">от 100-500 тыс р.</label>
              </li>
              <li>
              <input type="radio" name="money" value="500" className="radio" id="radio5" onChange={this.setMoney}/>
              <label htmlFor="radio5">больше 1 млн р.</label>
              </li>
            </ul>
          </div>
        `
        buttonsTemplate = `
          <div className="next">
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Готово!</button>
          </div>
        `

      when 4
        stepTemplate = `
            <div className="content">
              <div className="top"  >
                Спасибо!
              </div>
              <p>Все уже готово для вас.<br />
                  Куда и на чьё имя отправить бизнес идеи:</p>
              <div className="textinputs">
              <div className="label">Ваше имя:</div>
              <input type="text" name="name" placeholder="Корней" onChange={this.setName}/>
              <div className="label">Ваш e-mail:</div>
              <input type="text" name="email" placeholder="info@gmail.com" onChange={this.setEmail}/>
              </div>
            </div>
        `
        buttonsTemplate = `
          <div className="next">
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Отправить</button>
          </div>
        `

      when 5
        stepTemplate = `
          <div className="content">
          <p> подтвердите,что вы не робот.<br />
          Введите номер телефона:</p>
          <div className="textinputs">
          <div className="label">Ваш телефон:</div>
          <input type="text" name="phone" placeholder="+7(923)-88-90-34" onChange={this.setPhone}/>
          </div>
          </div>
        `
        buttonsTemplate = `
          <div className="next">
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Отправить</button>
          </div>
        `

      when 'success'
        stepTemplate = `
          <div className="content">
              <p>, проверяйте почту. <br />
              В ближайшее время мы свяжемся с вами <br />
          для объяснения дальнейших действий.
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
      {stepTemplate}
      {buttonsTemplate}

    </div>`
