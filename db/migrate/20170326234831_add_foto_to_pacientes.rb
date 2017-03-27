class AddFotoToPacientes < ActiveRecord::Migration
  def change
    add_column :pacientes, :foto, :string
  end
end
