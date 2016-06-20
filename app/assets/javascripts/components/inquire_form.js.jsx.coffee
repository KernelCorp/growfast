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
    switch this.state.currentStep
      when 1
        stepTemplate = `
        <div className="content">
          <p>На какой уровень заработка вы ориентируетесь: </p>

          <ul className="price-list">
            <li>
              <input type="radio" name="wage_lvl" value="30" checked={this.state.wageLvl == 30} onChange={this.setWageLvl}/>
              <label>от 30 тыс. р.</label>
            </li>
            <li>
              <input type="radio" name="wage_lvl" value="70" onChange={this.setWageLvl}/>
              <label>от 70 тыс. р.</label>
            </li>
            <li>
              <input type="radio" name="wage_lvl" value="100" onChange={this.setWageLvl}/>
              <label>от 100 тыс. р.</label>
            </li>
            <li>
              <input type="radio" name="wage_lvl" value="500" onChange={this.setWageLvl}/>
              <label>от 500 тыс. р.</label>
            </li>
          </ul>
        </div>
        `
      when 2
        stepTemplate = `
          <div className="content">
            step 2
          </div>
        `
      when 3
        stepTemplate = `
          <div className="content">
              step 3
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
      <div className="top"  >
          Тогда ответье на три вопроса, чтобы мы актуализировали идеи под ваши интересы:
      </div>
      <ul className="questions">
        <li className={this.state.currentStep == 1 ? 'active' : null}>1 Вопрос</li>
        <li className={this.state.currentStep == 2 ? 'active' : null}>2 Вопрос</li>
        <li className={this.state.currentStep == 3 ? 'active' : null}>3 Вопрос</li>
      </ul>

      {stepTemplate}

      <div className="next">
        <button onClick={this.buttonClick} type="submit">{this.buttonClick} Далее</button>
      </div>
      </div>`
