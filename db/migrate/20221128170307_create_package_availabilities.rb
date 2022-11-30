class CreatePackageAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :package_availabilities do |t|
      t.integer :availability_id
      t.integer :package_id

      t.timestamps
    end
  end
end
