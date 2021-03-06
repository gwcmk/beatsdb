class Sample < ActiveRecord::Base
	belongs_to :song
	before_save :st_to_secs, :yt_convert

	validates :starting_time, presence: true, format: { with: /\d{1,2}:\d{2}/ }
	validates :other_times, allow_blank: true, format: { with: /(\d{1,2}:\d{2}, ){0,10}\d{1,2}:\d{2}/ }
	validates :artist, presence: true
	validates :description, presence: true
	validates :url, allow_blank: true, format: { with: /\A(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})/ }

	private
	def st_to_secs
		self.starting_time_i = st_to_int
	end

	def st_to_int
		if self.starting_time =~ /\d{1,2}:\d{1,2}/
			buf = self.starting_time.split(':')
			return buf[0].to_i*60 + buf[1].to_i
		else
			return nil
		end
	end

	def yt_convert
		if self.url.empty?
			return nil
		end
		require 'youtube_addy'
		id = YouTubeAddy.extract_video_id(self.url)
		self.url = "https://www.youtube.com/embed/" + id + "?html5=1"
	end
end
