json.extract! patient, :id, :name, :date_of_birth, :address, :phone_no, :condition, :created_at, :updated_at
json.url patient_url(patient, format: :json)
