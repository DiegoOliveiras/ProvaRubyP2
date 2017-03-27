class AddEnderecoToDentistas < ActiveRecord::Migration
  def change
    add_column :dentistas, :endereco, :string
  end
end
