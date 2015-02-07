class HomeController < ApplicationController
  def index
    if user_signed_in?
      go_to_dashboard
    end
  end

  def about
  end

  def contact
  end

  def learn
  end
end
