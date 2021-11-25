class Author < ApplicationRecord
	has_many :books
	has_many :reviews
	has_many :books, through: :reviews
	has_many :pitcures, as: :imagable

end
