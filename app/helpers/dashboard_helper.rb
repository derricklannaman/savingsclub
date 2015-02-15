module DashboardHelper

  def display_date
    "#{Time.now.strftime('%A, %B %d, %Y')}"
  end

end
