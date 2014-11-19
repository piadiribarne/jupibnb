json.array!(@flat) do |flat|
 json.extract! flat, :id, :city, :description, :picture
 json.url flat_url(flat, format: :json)
end