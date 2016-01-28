class Pet < ActiveRecord::Base
 
  attr_accessor :age
  
  validates :name, length: {minimum: 1, maximum: 35}
  validates :breed, length: {minimum: 1, maximum: 35}
  validates :age, presence: true
  validates :weight, presence: true
  # validates_associated :visits
  
  def age
    self.birthday = Date.today - @age.to_i  
  end
  
  def age_per_birthday
    self.birthday ? (Date.today - self.birthday).round : 0
  end  
  
end
