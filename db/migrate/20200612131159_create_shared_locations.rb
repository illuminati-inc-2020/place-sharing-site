class CreateSharedLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_locations do |t|
      t.references :location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

  end
end
