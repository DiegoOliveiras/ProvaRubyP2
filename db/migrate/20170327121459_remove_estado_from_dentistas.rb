class RemoveEstadoFromDentistas < ActiveRecord::Migration
  def change
    remove_column :dentistas, :estado, :string
  end
end
