class Article < ApplicationRecord
	validates :title, presence: true
	
	def publish
		update(published: true)
	end
end
