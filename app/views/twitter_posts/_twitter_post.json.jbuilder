json.extract! twitter_post, :id, :content, :picture, :kind, :created_at, :updated_at
json.url twitter_post_url(twitter_post, format: :json)
