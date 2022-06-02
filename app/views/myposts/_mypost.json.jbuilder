json.extract! mypost, :id, :body, :access, :passcode, :created_at, :updated_at
json.url mypost_url(mypost, format: :json)
