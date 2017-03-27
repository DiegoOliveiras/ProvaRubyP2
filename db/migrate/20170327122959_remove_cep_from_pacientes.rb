class RemoveCepFromPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :cep, :string
  end
end
