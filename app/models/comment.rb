class Comment < ActiveRecord::Base
  attr_accessible :comment, :ingredient_id, :user_id
  belongs_to :user
  belongs_to :ingredient
end
