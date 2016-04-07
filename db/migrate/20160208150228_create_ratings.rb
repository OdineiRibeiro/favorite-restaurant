class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.float :rate
      t.float :bill

      t.timestamps null: false
    end
  end
end
