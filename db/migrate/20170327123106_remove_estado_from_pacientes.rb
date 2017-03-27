class RemoveEstadoFromPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :estado, :string
  end
end
