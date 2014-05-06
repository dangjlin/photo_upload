json.array!(@uploadphotos) do |uploadphoto|
  json.extract! uploadphoto, :id, :name, :file, :size, :content_type
  json.url uploadphoto_url(uploadphoto, format: :json)
end
