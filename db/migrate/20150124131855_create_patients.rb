class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.string :mobile
      t.date :dob
      t.string :doctor

      t.timestamps null: false
    end
  end
end
