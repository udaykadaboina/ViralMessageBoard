class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :name, presence: true
	validates :message, presence: true
end
