json.extract! article, :id, :author, :article_date, :title, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
