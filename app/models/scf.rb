class Scf < ApplicationRecord

	has_many :clients, through: :scf_configurations
	has_many :configurations

	def name_with_description
		"#{name} - (#{description})"
	end
end
