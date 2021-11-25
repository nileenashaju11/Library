class Book < ApplicationRecord
	belongs_to :author
	has_many :reviews
	has_many :authors, through: :reviews
	has_many :pitcures, as: :imagable

end
