class CreateConsultas < ActiveRecord::Migration
  def change
    create_table :consultas do |t|
      t.date :data
      t.string :hora

      t.timestamps null: false
    end
  end
end
