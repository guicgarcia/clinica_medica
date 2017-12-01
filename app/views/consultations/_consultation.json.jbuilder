json.extract! consultation, :id, :historic, :note, :payment, :status, :doctor_id, :patient_id, :created_at, :updated_at
json.url consultation_url(consultation, format: :json)
