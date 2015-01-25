class CreateDiseaseFields < ActiveRecord::Migration
  def change
    create_table :disease_fields do |t|
      t.string :name
      t.string :value
      t.belongs_to :Disease, index: true

      t.timestamps null: false
    end
    add_foreign_key :disease_fields, :Diseases
  end
end
