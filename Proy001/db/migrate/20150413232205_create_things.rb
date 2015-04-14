class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.integer :ippadre
      t.integer :nivel
      t.string :titulo
      t.text :content
      t.string :createdby
      t.integer :upvote
      t.integer :downvote
      t.string :type

      t.timestamps null: false
    end
  end
end
