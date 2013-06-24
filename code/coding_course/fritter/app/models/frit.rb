class Frit < ActiveRecord::Base
	attr_accessible :publish_date, :text, :user_id
	belongs_to :user
end
