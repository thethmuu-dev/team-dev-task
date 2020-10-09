class AgendaMailer < ApplicationMailer
  def delete_agenda_mail(owner, members, agenda)
    @owner = owner
    @agenda = agenda
    @users = members.all
    mail to: @owner.email, subject: I18n.t('views.messages.delete_agenda')
    @users.each do |user|
      mail to: user.email, subject: I18n.t('views.messages.delete_agenda')
    end
  end
end
