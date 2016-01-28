json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :address, :city, :state, :zip, :certificator, :years_practiced
  json.url provider_url(provider, format: :json)
end
