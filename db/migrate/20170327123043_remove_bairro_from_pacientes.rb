class RemoveBairroFromPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :bairro, :string
  end
end
