class Element < ActiveRecord::Base
	belongs_to :song
	before_save :st_to_secs

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
end
