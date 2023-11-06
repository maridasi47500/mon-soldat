class ForgotController < ApplicationController
  def index
  end
  def reset
    @user=User.find_by_email(params[:email])
    @pass="abcdef"
    @user.password=@pass
    @user.password_confirmation=@pass
    if @user.save
              UserMailer.with(user: @user).welcome_email.deliver_later
              redirect_to root_path, notice: "le nouveau mot de passe vous a été envoyé"
    else
      redirect_to root_path, notice: "il y a eu une erreur. réessayer"
    end

  end
end
