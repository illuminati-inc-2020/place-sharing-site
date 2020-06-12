class CreateSharedPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :shared_places do |t|
      t.references :place, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :shared_places, [:place, :user], unique: true
  end
end
