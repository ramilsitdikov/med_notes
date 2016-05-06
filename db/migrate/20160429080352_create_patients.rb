class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :sex
      t.string :birthday
      t.string :inn
      t.string :certificate_of_insurance
      t.string :password
      t.string :access_password

      t.timestamps null: false
    end
  end
end
