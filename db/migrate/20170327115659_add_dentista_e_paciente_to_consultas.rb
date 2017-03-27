class AddDentistaEPacienteToConsultas < ActiveRecord::Migration
  def change
    add_reference :consultas, :dentista, index: true, foreign_key: true
    add_reference :consultas, :paciente, index: true, foreign_key: true
  end
end
