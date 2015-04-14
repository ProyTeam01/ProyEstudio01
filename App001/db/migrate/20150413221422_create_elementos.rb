class CreateElementos < ActiveRecord::Migration
  def change
    create_table :elementos do |t|
      t.integer :idPadre
      t.integer :nivel
      t.string :titulo
      t.text :content
      t.string :createdby
      t.string :upvote
      t.string :downvote
      t.string :type

      t.timestamps null: false
    end
  end
end
