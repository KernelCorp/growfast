class InquireMailer < ApplicationMailer

  def inquire_received(inquire)
    mail to: 'test@kerweb.ru',
         subject: 'Новая заявка с сайта'
  end
end
