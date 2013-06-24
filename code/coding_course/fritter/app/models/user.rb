class User < ActiveRecord::Base
	attr_accessible :colour, :dob, :name
	has_many :frits
end
