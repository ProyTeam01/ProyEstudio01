class AddTipeToObjeto < ActiveRecord::Migration
  def change
    add_column :objetos, :tipe, :number
  end
end
