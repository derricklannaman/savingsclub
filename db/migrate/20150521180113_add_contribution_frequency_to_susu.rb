class AddContributionFrequencyToSusu < ActiveRecord::Migration
  def change
    add_column :susus, :scheduled_contribution, :string
  end
end
