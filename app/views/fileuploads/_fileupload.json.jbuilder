json.extract! fileupload, :id, :fname, :content_type, :contents, :created_at, :updated_at
json.url fileupload_url(fileupload, format: :json)
