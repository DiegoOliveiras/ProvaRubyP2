class AddEnderecoFromPacientes < ActiveRecord::Migration
  def change
    add_column :pacientes, :endereco, :string
  end
end
