json.extract! patient, :id, :name, :cpf, :birth, :phone, :address, :companion, :created_at, :updated_at
json.url patient_url(patient, format: :json)
