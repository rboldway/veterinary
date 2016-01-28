class Provider < ActiveRecord::Base

  attr_accessor :age
  
  validates :name, length: {minimum: 1, maximum: 35}
  validates :zip, length: {maximum: 5}
  validates :years_practiced, numericality: {only_integer: true, less_than_or_equal_to: 1, less_than_or_equal_to: 100}
  
  def age
    self.birthday = Date.today - @age.to_i  
  end
  
  def age_per_birthday
    self.birthday ? (Date.today - self.birthday).round : 0
  end  

end
