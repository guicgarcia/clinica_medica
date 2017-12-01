class Doctor < ApplicationRecord
	has_many :consultation
	has_many :patient, through: :consultation
end
