class RemoveCepFromDentistas < ActiveRecord::Migration
  def change
    remove_column :dentistas, :cep, :string
  end
end
