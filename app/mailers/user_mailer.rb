class UserMailer < ApplicationMailer
    default from: ENV["EMAIL"]

      def welcome_email
            @user = params[:user]
                @pass  = 'abcdef'
                    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
                      end

end
