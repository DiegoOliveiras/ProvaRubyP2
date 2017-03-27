class RemoveCidadeFromPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :cidade, :string
  end
end
