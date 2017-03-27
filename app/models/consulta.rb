class Consulta < ActiveRecord::Base
	validates_presence_of :data, message: "A data deve ser preenchida"
	validates_presence_of :hora, message: "A hora deve ser preenchida"

	belongs_to :dentista
	belongs_to :paciente
end
