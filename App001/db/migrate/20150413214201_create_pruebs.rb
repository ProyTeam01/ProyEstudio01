class CreatePruebs < ActiveRecord::Migration
  def change
    create_table :pruebs do |t|
      t.string :nom
      t.text :desc

      t.timestamps null: false
    end
  end
end
