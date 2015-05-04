class AddMemberDefaultOfZeroToSusu < ActiveRecord::Migration
  def change
    change_column_default :susus, :member_count, 2
  end
end
