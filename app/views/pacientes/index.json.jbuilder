json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nome, :rg, :cpf, :nascimento, :telefone, :email, :cep, :rua, :numero, :bairro, :cidade, :estado
  json.url paciente_url(paciente, format: :json)
end
