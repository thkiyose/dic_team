class AgendaMailer < ApplicationMailer
  default from: 'from@example.com'

  def agenda_deleted_mail(agenda)
    @title = agenda.title
    mail to: agenda.team.members.pluck(:email), subject: I18n.t('views.messages.destroy_agenda')
  end
end
