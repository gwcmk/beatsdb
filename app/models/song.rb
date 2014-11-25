class Song < ActiveRecord::Base
	has_many :samples
	has_many :elements
	accepts_nested_attributes_for :samples
	accepts_nested_attributes_for :elements
	before_save :yt_convert

	def self.search(query)
	# where(:title, query) -> This would return an exact match of the query
		where("title ilike ?", "%#{query}%") 
	end

	private
	def yt_convert
		require 'youtube_addy'
		id = YouTubeAddy.extract_video_id(self.url)
		self.url = "http://www.youtube.com/embed/" + id + "?html5=1"
	end
end