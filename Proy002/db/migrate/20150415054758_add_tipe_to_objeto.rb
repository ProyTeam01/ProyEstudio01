class AddTipeToObjeto < ActiveRecord::Migration
  def change
    add_column :objetos, :tipe, :integer
  end
end
