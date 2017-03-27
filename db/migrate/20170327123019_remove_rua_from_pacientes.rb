class RemoveRuaFromPacientes < ActiveRecord::Migration
  def change
    remove_column :pacientes, :rua, :string
  end
end
