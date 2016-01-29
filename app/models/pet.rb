class Pet < ActiveRecord::Base
 
  after_find :age_per_birthday
  before_update :birthday_per_age

  attr_accessor :age
  
  validates :name, length: {minimum: 1, maximum: 35}
  validates :breed, length: {minimum: 1, maximum: 35}
  validates :age, presence: true
  validates :weight, presence: true

  def birthday_per_age
    self.birthday = Date.today - @age.to_i
  end

  def age_per_birthday
    self.age = self.birthday ? (Date.today - self.birthday).round : 0
  end  
  
end
