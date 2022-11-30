class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.integer :user_id
      t.integer :package_id

      t.timestamps
    end
  end
end
