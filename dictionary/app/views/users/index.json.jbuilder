json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :user_password, :user_email, :deleted
  json.url user_url(user, format: :json)
end
