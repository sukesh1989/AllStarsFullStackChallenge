class DiseaseField < ActiveRecord::Base
  belongs_to :Disease,:foreign_key => "disease_id"
end
