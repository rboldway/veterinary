json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :pet_type, :breed, :birthday, :weight, :last_visit_date
  json.url pet_url(pet, format: :json)
end
