@InquireForm = React.createClass
  getInitialState: ->
    currentStep: 1

  buttonClick: ()->
    unless @state.currentStep == 3
      newStep =  @state.currentStep + 1
      @setState currentStep: newStep
    true

  setWageLvl: (e) ->
    this.setState wageLvl: e.target.value




  render: ->
    `<div>
        <div className="top"  >
          Тогда ответьте на три вопроса, чтобы мы
          актуализировали идеи под ваши интересы:
        </div>
        <ul className="questions">
          <li className={this.state.currentStep == 1 ? 'active' : null}>1 Вопрос</li>
          <li className={this.state.currentStep == 2 ? 'active' : null}>2 Вопрос</li>
          <li className={this.state.currentStep == 3 ? 'active' : null}>3 Вопрос</li>
        </ul>

        <div className="content">
          <p>На какой уровень заработка вы ориентируетесь:</p>
          <ul className="price-list">
              <li>
                <input type="radio" name="wage_lvl" value="30" className="radio" checked={this.state.wageLvl == 30} onChange={this.setWageLvl}/>
                <label>от 30 тыс. р.</label>
              </li>
              <li>
                <input type="radio" name="wage_lvl" value="70" className="radio" onChange={this.setWageLvl}/>
                <label for="radio">от 70 тыс. р.</label>
              </li>
              <li>
                <input type="radio" name="wage_lvl" value="100" className="radio" onChange={this.setWageLvl}/>
                <label>от 100 тыс. р.</label>
              </li>
              <li>
                <input type="radio" name="wage_lvl" value="500" className="radio" onChange={this.setWageLvl}/>
                <label>от 500 тыс. р.</label>
              </li>
          </ul>
        </div>

        <div className="next">
          <button onClick={this.buttonClick} type="submit">{this.buttonClick} Далее</button>
        </div>
      </div>`
