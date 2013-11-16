json.array!(@photographs) do |photograph|
  json.extract! photograph, :title, :description, :image
  json.url photograph_url(photograph, format: :json)
end
