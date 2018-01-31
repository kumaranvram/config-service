class Client < ApplicationRecord

	has_many :scf, through: :scf_configurations
	has_many :configurations
end
