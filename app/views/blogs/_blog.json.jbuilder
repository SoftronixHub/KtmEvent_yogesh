json.extract! blog, :id, :title, :description, :published_date, :written_by, :created_at, :updated_at
json.url blog_url(blog, format: :json)
