json.array!(@elementos) do |elemento|
  json.extract! elemento, :id, :idPadre, :nivel, :titulo, :content, :createdby, :upvote, :downvote, :type
  json.url elemento_url(elemento, format: :json)
end
