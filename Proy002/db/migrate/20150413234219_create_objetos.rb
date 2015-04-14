class CreateObjetos < ActiveRecord::Migration
  def change
    create_table :objetos do |t|
      t.integer :padreid
      t.string :titulo
      t.text :content
      t.string :createdby
      t.integer :upvote
      t.integer :downvote

      t.timestamps null: false
    end
  end
end
