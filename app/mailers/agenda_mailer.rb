class AgendaMailer < ApplicationMailer
  def delete_agenda_mail
    @agenda = params[:agenda]
    @member = params[:member]
    mail(to: @member.email, subject: I18n.t('views.messages.delete_agenda'))
  end
end
