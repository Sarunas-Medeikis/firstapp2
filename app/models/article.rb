class Article < ActiveRecord::Base
	belongs_to :user
	validates :name, :body, :presence => true
end
