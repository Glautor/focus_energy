class AdministrativeController < ApplicationController
  def users
  	@users = User.all
  end

  def consultings
  	@user = User.find(params[:user_id])
  	@consultings = Consulting.where(user_id:@user)
  end

  def tecnicos
  	@users = User.select{|u| u.user_type != "População"}
  end

  def tecnicosAdd
  	
  end

end
