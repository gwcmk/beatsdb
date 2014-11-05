class Song < ActiveRecord::Base
	has_many :samples
	has_many :elements

	def self.search(query)
	# where(:title, query) -> This would return an exact match of the query
		where("title ilike ?", "%#{query}%") 
	end
end