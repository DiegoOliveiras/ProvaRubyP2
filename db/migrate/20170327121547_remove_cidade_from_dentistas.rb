class RemoveCidadeFromDentistas < ActiveRecord::Migration
  def change
    remove_column :dentistas, :cidade, :string
  end
end
