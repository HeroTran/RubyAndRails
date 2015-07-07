json.array!(@japaneses) do |japanese|
  json.extract! japanese, :id, :word_japanese, :word_vietnamese, :sound_word, :deleted, :note
  json.url japanese_url(japanese, format: :json)
end
