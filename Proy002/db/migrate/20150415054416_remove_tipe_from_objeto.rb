class RemoveTipeFromObjeto < ActiveRecord::Migration
  def change
    remove_column :objetos, :tipe, :number
  end
end
