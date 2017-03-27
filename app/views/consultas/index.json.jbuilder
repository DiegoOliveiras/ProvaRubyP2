json.array!(@consultas) do |consulta|
  json.extract! consulta, :id, :data, :hora
  json.url consulta_url(consulta, format: :json)
end
