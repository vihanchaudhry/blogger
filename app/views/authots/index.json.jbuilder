json.array!(@authots) do |authot|
  json.extract! authot, :id, :username, :email, :password, :password_confirmation
  json.url authot_url(authot, format: :json)
end
