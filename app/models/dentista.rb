class Dentista < ActiveRecord::Base
	validates_presence_of :nome, message: "O nome deve ser preenchido"
	validates_presence_of :especialidade, message: "A especialidade deve ser preenchida"
	
	validates_uniqueness_of :rg, message: "RG já cadastrado"
	validates_uniqueness_of :cpf, message: "CPF já cadastrado"
	validates_uniqueness_of :cro, message: "CRO já cadastrado"

	validates_size_of :nome, :minimum=>3, :maximun=>50, message: "Muito pequeno ou muito grande, mínimo de 3 e máximo de 50 caracteres"
	validates_numericality_of :salario, message: "O salário deve ser numérico"
end
