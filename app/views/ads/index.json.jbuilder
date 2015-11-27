json.array!(@ads) do |ad|
  json.extract! ad, :id, :user_id, :title, :description, :photo, :facilities, :price, :address
  json.url ad_url(ad, format: :json)
end
