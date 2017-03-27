class RemoveNumeroFromDentistas < ActiveRecord::Migration
  def change
    remove_column :dentistas, :numero, :string
  end
end
