class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :symptoms
      t.string :diagnosis
      t.string :conclusion
      t.string :assigning

      t.timestamps null: false
    end
  end
end
