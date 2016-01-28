class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :certificator
      t.date :started_practice_on

      t.timestamps null: false
    end
  end
end
