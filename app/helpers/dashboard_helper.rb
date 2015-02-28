module DashboardHelper

  def display_date
    "#{Time.now.strftime('%A, %B %d, %Y')}"
  end

  def visit_count
    mins = calculate_minutes_since_sign_in
    if first_sign_in?
      "Welcome aboard"
    else
      "You last signed in #{time_ago_in_words(mins.minutes.ago)} ago."
    end
  end

  def calculate_minutes_since_sign_in
    last_sign_in = Time.now - current_user.last_sign_in_at
    last_sign_in.to_i / 60
  end

  def first_sign_in?
    current_user.sign_in_count == 1
  end

  def dashboard?
    controller_name == 'dashboard'
  end

  def isController? name
    controller_name == name
  end

  def show_page?
    action_name == 'show'
  end


end
