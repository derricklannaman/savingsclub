class AddNameAndIndexAndTotalValueToSusus < ActiveRecord::Migration
  def change
    add_column :susus, :name, :string
    add_column :susus, :total_value, :decimal
    add_column :susus, :user_id, :integer
    add_index :susus, :user_id
  end
end
