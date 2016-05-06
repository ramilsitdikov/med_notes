class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :username
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :sex
      t.string :birthday
      t.string :inn
      t.string :coi
      t.string :password
      t.string :access_code
      t.integer :chat_id

      t.timestamps null: false
    end
  end
end
