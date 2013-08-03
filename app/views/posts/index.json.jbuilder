json.array!(@posts) do |post|
  json.extract! post, :name, :message, :title
  json.url post_url(post, format: :json)
end
