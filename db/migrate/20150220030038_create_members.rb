class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :susu_id

      t.timestamps null: false
    end
    add_index :members, :susu_id
  end
end
