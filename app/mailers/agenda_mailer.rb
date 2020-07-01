class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_deleted_mail(email,title)
    @email = email
    @title = title
    mail to: @email, subject: I18n.t('views.messages.destroy_agenda')
  end
end
