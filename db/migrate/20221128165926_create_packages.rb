class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.string :title
      t.integer :price
      t.integer :number_of_meetings

      t.timestamps
    end
  end
end
