class EntrainementController < ApplicationController
  def aujourdhui
    @arr=Cardio.all.where(user_id: current_user.id)
    @arr+=Abdo.all.where(user_id: current_user.id)
    @arr=@arr.sort_by{|x|x.created_at}.reverse
  end
end
