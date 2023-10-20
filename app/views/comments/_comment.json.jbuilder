json.extract! comment, :id, :email, :post_id, :content, :username, :created_at, :updated_at
json.url comment_url(comment, format: :json)
