json.array!(@libraries) do |library|
  json.extract! library, :id, :name, :location, :id
  json.url library_url(library, format: :json)
end
