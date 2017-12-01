class Patient < ApplicationRecord
	has_many :consultation
	has_many :doctor, through: :consultation
	has_many :preservice
end
