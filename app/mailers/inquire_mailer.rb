class InquireMailer < ApplicationMailer

  def inquire_received(inquire)
    mail to: 'leads@growfast.ru',
         subject: 'Новая заявка с сайта'
  end
end
