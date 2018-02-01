class ScfConfiguration < ApplicationRecord
	belongs_to :client
	belongs_to :scf

	validates :scf_id, uniqueness: { scope: :client_id , :message => " has been already configured for this client" }

end
