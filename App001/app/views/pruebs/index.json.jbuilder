json.array!(@pruebs) do |prueb|
  json.extract! prueb, :id, :nom, :desc
  json.url prueb_url(prueb, format: :json)
end
