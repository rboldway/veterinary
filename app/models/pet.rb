class Pet < ActiveRecord::Base
 
  after_find :age_per_birthdate
  before_update :birthdate_per_age

  attr_accessor :age
  
  validates :name, length: {minimum: 1, maximum: 35}
  validates :breed, length: {minimum: 1, maximum: 35}
  validates :age, presence: true
  validates :weight, presence: true

  def birthdate_per_age
    self.birthdate = Date.today - @age.to_i
  end

  def age_per_birthdate
    self.age = self.birthdate ? (Date.today - self.birthdate).round : 0
  end  
  
end
