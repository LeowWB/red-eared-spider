# logic for the crawling functionality

require 'open-uri'

module Spider
	
	class Spider

		def initialize
			
		end

		def spide url

			open(url) do |f|
				f.each_line do |line|
					puts line
				end
			end

		end
	end
end