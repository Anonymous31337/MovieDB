json.extract! movie, :id, :title, :originaltitle, :releaseyear, :cover, :length, :ageres, :synopsis, :created_at, :updated_at
json.url movie_url(movie, format: :json)
