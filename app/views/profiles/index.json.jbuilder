json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :address, :rate
  json.url profile_url(profile, format: :json)
end
