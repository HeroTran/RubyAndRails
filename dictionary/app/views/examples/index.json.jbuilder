json.array!(@examples) do |example|
  json.extract! example, :id, :ex_japanese, :ex_vietnamese, :deleted
  json.url example_url(example, format: :json)
end
