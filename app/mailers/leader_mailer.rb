class LeaderMailer < ApplicationMailer
    def leader_made_mail(team, member)
      @team = team
      mail to: member.email, subject: I18n.t('views.messages.leader_made')
    end
end
