class CreateAccessSessions < ActiveRecord::Migration
  def change
    create_table :access_sessions do |t|
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end
