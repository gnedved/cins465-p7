json.array!(@tag_hashes) do |tag_hash|
  json.extract! tag_hash, :key, :value, :photograph_id
  json.url tag_hash_url(tag_hash, format: :json)
end
