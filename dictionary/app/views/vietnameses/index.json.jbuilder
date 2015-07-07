json.array!(@vietnameses) do |vietnamese|
  json.extract! vietnamese, :id, :word_vietnamese, :word_japanese, :sound_word, :deleted, :note
  json.url vietnamese_url(vietnamese, format: :json)
end
