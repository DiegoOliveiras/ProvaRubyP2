class RemoveBairroFromDentistas < ActiveRecord::Migration
  def change
    remove_column :dentistas, :bairro, :string
  end
end
