module SususHelper

  def format_start_date(susu)
    "Begins: #{susu.start_date.to_time.strftime('%m/%d/%Y')}"
  end

  def display_member_count(susu)
    "#{susu.member_count} Members"
  end

  def display_payout(susu)
    "Payout: #{number_to_currency(susu.total_value)}"
  end


end
