class InquireMailer < ApplicationMailer
  default from: "GrowFast <growfast@kerweb.ru>"

  def inquire_received(inquire)
    @inquire=inquire
    mail to: 'manager@growfast.ru',
         subject: 'Новая заявка с сайта'
  end
end
