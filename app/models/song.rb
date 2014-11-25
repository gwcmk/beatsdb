class Song < ActiveRecord::Base
	has_many :samples
	has_many :elements
	accepts_nested_attributes_for :samples
	accepts_nested_attributes_for :elements
	before_save :yt_convert

	validates :title, presence: true
	validates :artist, presence: true
	validates :album, presence: true
	validates :description, presence: true
	validates :url, presence: true, format: { with: /\A(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/ }

	def self.search(query)
		where("title ilike ?", "%#{query}%") 
	end

	private
	def yt_convert
		require 'youtube_addy'
		id = YouTubeAddy.extract_video_id(self.url)
		self.url = "http://www.youtube.com/embed/" + id + "?html5=1"
	end
end