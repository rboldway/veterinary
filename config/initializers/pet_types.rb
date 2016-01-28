begin
  %w(dog cat bird).each do |type|
    PetType.where(name: type).first || PetType.create(name: type)
  end
rescue
end
