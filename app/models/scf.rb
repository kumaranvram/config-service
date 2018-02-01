class Scf < ApplicationRecord

	has_many :clients, through: :scf_configurations
	has_many :configurations

	validates_uniqueness_of :name
	validates_presence_of :name, :description, :default_value


	def name_with_description
		"#{name} - (#{description})"
	end
end
