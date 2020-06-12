class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.references :user, null: false, foreign_key: true
      t.float :lat
      t.float :long
      t.boolean :public

      t.timestamps
    end
  end
end
