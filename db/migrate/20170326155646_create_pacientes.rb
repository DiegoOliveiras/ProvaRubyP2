class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :nascimento
      t.string :telefone
      t.string :email
      t.string :cep
      t.string :rua
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :estado

      t.timestamps null: false
    end
  end
end
