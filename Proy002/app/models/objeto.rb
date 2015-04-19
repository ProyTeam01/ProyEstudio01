class Objeto < ActiveRecord::Base
	belongs_to :parent, :class_name => "Objeto", :foreign_key => "padreid"
	has_many :child_objetos, :class_name => "Objeto"
	#accepts_nested_attributes_for :parent
end