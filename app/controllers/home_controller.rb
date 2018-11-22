class HomeController < ApplicationController
  # before_action :authenticate_user!
  layout 'admin_lte_2'
  def index
  end

  def usuario
  	@user = current_user
  end

  def administrador
  	@admin = current_admin
  end
end
