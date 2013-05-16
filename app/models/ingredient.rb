class Ingredient < ActiveRecord::Base
  attr_accessible :description, :name, :rating
  has_many :comments

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			find(:all)
		end
	end

end