json.array!(@dentistas) do |dentista|
  json.extract! dentista, :id, :nome, :especialidade, :cro, :salario, :rg, :cpf, :nascimento, :telefone, :email, :cep, :rua, :numero, :bairro, :cidade, :estado
  json.url dentista_url(dentista, format: :json)
end
