class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.string :symptoms
      t.string :diagnosis
      t.string :conclusion
      t.string :assigning

      t.timestamps null: false
    end
  end
end
