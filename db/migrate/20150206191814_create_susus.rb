class CreateSusus < ActiveRecord::Migration
  def change
    create_table :susus do |t|

      t.timestamps
    end
  end
end
