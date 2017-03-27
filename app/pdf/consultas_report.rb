class ConsultasReport<Prawn::Document
	def initialize(consultas)
		super()
		@totconsultas=0
		@consultas = consultas
		header
		text_content
		table_content
		sumary
	end

	def header
		image "#{Rails.root}/app/assets/images/header.png", width: 530, height: 100
	end

	def text_content
		y_position = cursor - 50

		bounding_box([0, y_position], :width => 540,:height => 50) do
			text "Listagem de consultas Complementares", size: 12, style: :bold
		end
	end

	def consulta_rows
		[['Data', 'Hora', 'Dentista', 'Paciente']] +
		@consultas.map do |consulta|
			[consulta.data, consulta.hora, consulta.dentista.nome, consulta.paciente.nome]
		end
	end

	def table_content
		table consulta_rows do
			row(0).font_style = :bold
			self.header = true
			self.row_colors = ['DDDDDD', 'FFFFFF']
			self.column_widths = [90,50,200,200]
		end
	end

	def sumary
		@consultas.each do |consulta|
			@totconsultas += 1
		end

		y_position = cursor - 50

		bounding_box([0, y_position], :width => 540, :height => 50) do
			text "Total de Consultas: #{@totconsultas} ", size:15, style: :bold
		end
	end
end

