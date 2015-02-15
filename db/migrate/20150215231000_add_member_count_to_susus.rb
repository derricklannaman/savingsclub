class AddMemberCountToSusus < ActiveRecord::Migration
  def change
    add_column :susus, :member_count, :integer
  end
end
