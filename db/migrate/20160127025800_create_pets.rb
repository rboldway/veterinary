class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :pet_type
      t.string :breed
      t.date :birthdate
      t.string :weight
      t.date  :last_visit_date

      t.timestamps null: false
    end
  end
end
