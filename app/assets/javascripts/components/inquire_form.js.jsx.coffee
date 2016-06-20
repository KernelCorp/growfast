@InquireForm = React.createClass
  getInitialState: ->
    currentStep: 1

  buttonClick: ()->
    unless @state.currentStep == 3
      newStep =  @state.currentStep + 1
      @setState currentStep: newStep
    true

  setWageLvl: (e) ->
    console.log 'switch'
    this.setState wageLvl: e.target.value




  render: ->
    if this.state.currentStep == 2
      buttonsTemplate = `
          <div className="next">
          <button onClick={this.buttonClick} className='dontknow' type="submit">{this.buttonClick} Не знаю</button>
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Далее</button>
          </div>
      `
    else
      buttonsTemplate = `
          <div className="next">
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Далее</button>
          </div>
      `

    switch this.state.currentStep
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
          <input type="text" name="business_type" onChange={this.business_type}/>

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
          <p>Какую сумму вы планируете инвестировать на старт
          собственного дела:</p>

            <ul className="price-list">
              <li>
              <input type="radio" name="wage_lvl" value="30" className="radio" id="radio1" checked={this.state.wageLvl == 30} onChange={this.setWageLvl}/>
              <label htmlFor="radio1">Ищу подработку (то есть «0»)</label>
              </li>
              <li>
              <input type="radio" name="wage_lvl" value="70" className="radio" id="radio2" onChange={this.setWageLvl}/>
              <label htmlFor="radio2">от 30-50 тыс р.</label>
              </li>
              <li>
              <input type="radio" name="wage_lvl" value="100" className="radio" id="radio3" onChange={this.setWageLvl}/>
              <label htmlFor="radio3">от 50-100 тыс р.</label>
              </li>
              <li>
              <input type="radio" name="wage_lvl" value="500" className="radio" id="radio4" onChange={this.setWageLvl}/>
              <label htmlFor="radio4">от 100-500 тыс р.</label>
              </li>
              <li>
              <input type="radio" name="wage_lvl" value="500" className="radio" id="radio5" onChange={this.setWageLvl}/>
              <label htmlFor="radio5">больше 1 млн р.</label>
              </li>
            </ul>
          </div>
        `
      when 'success'
        stepTemplate = `
          <div className="content">
              success submit
          </div>`

      else
        `
          <div className="content">
              step not found
          </div>
        `

    console.log stepTemplate

    `<div>


      {stepTemplate}
      {buttonsTemplate}

    </div>`
