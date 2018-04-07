class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :date_of_birth
      t.string :address
      t.integer :phone_no
      t.string :condition

      t.timestamps
    end
  end
end
