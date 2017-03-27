class Paciente < ActiveRecord::Base
	validates_presence_of :nome, message: "O nome deve ser preenchido"
	
	validates_uniqueness_of :rg, message: "RG já cadastrado"
	validates_uniqueness_of :cpf, message: "CPF já cadastrado"

	validates_size_of :nome, :minimum=>3, :maximun=>50, message: "Muito pequeno ou muito grande, mínimo de 3 e máximo de 50 caracteres"

	mount_uploader :foto, FotoPacienteUploader
end
