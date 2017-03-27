class RemoveRuaFromDentistas < ActiveRecord::Migration
  def change
    remove_column :dentistas, :rua, :string
  end
end
