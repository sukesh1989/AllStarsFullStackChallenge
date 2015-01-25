class Patient < ActiveRecord::Base
	has_many :fields, class_name:"Disease"
	
	accepts_nested_attributes_for :fields,allow_destroy:true

	def self.import(file)
		CSV.foreach(file.path,headers:true) do |row|
			Patient.create! row.to_hash
		end
	end
end
