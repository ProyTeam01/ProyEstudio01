json.array!(@things) do |thing|
  json.extract! thing, :id, :ippadre, :nivel, :titulo, :content, :createdby, :upvote, :downvote, :type
  json.url thing_url(thing, format: :json)
end
