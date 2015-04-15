class AddIssubjectToObjeto < ActiveRecord::Migration
  def change
    add_column :objetos, :issubject, :boolean
  end
end
