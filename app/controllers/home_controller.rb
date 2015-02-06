class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :dashboard
    end
  end

  def about
  end

  def contact
  end

  def learn
  end
end
