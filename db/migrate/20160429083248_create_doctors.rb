class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :password

      t.timestamps null: false
    end
  end
end
