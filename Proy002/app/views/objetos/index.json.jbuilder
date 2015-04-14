json.array!(@objetos) do |objeto|
  json.extract! objeto, :id, :padreid, :titulo, :content, :createdby, :upvote, :downvote
  json.url objeto_url(objeto, format: :json)
end
