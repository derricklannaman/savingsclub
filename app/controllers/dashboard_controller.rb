class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @susus = current_user.susus
  end

end
