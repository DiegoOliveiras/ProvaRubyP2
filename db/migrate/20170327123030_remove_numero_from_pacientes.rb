class RemoveNumeroFromPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :numero, :string
  end
end
