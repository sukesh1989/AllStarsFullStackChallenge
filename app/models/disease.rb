class Disease < ActiveRecord::Base
  belongs_to :patient
  has_many :diseasefields, class_name:"DiseaseField"
  accepts_nested_attributes_for :diseasefields,allow_destroy:true
end
