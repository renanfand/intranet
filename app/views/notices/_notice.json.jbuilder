json.extract! notice, :id, :title, :subject, :body, :created_at, :updated_at
json.url notice_url(notice, format: :json)
