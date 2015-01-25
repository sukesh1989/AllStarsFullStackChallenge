class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :name
      t.belongs_to :patient, index: true

      t.timestamps null: false
    end
    add_foreign_key :diseases, :patients
  end
end
