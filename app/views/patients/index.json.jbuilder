json.array!(@patients) do |patient|
  json.extract! patient, :id, :firstname, :lastname, :age, :mobile, :dob, :doctor
  json.url patient_url(patient, format: :json)
end
