class AddStartDateToSusus < ActiveRecord::Migration
  def change
    add_column :susus, :start_date, :datetime
    add_column :susus, :end_date, :datetime
  end
end
