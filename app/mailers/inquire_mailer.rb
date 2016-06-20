class InquireMailer < ApplicationMailer

  def inquire_received(inquire)
    mail to: inquire.email,
         subject: 'Ваша заявка получена'
  end
end
