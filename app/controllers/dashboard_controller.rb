class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @susus = current_user.susus
    @susu = Susu.new
  end

end
