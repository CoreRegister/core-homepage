class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :type
      t.integer :locations

      t.timestamps
    end
  end
end
