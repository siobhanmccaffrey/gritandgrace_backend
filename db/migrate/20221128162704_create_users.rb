class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
