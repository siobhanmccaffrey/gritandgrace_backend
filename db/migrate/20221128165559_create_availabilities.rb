class CreateAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :availabilities do |t|
      t.integer :day_of_week
      t.string :start
      t.string :end
      t.boolean :is_available, default: true

      t.timestamps
    end
  end
end
