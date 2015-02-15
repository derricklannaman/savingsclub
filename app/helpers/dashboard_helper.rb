module DashboardHelper

  def display_date
    "#{Time.now.strftime('%A, %B %d, %Y')}"
  end

  def visit_count
    last_sign_in = Time.now - current_user.last_sign_in_at
    mins = last_sign_in.to_i / 60
    if current_user.sign_in_count == 1
      "Welcome aboard"
    else
      "You last signed in #{time_ago_in_words(mins.minutes.ago)} ago."
    end
  end
end
