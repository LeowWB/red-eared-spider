load 'spider.rb'

GITHUB_TEST_PAGE = 'https://leowwb.github.io/testing.html'


puts "Enter URL (leave blank for GitHub test page): "
url = gets.chomp

url = GITHUB_TEST_PAGE if url.length == 0


puts "Enter 1 for stdout, 2 for save to file, 3 for the price of 1"
output_option = gets.chomp.to_i

if (1..3).member? output_option then

	spoder = Spider::Spider.new
	raw_html = spoder.spide url

	case output_option
	when 1, 3
		puts raw_html
	when 2
		output_file = File.open("output.html", 'w')
		output_file << raw_html
		output_file.close
		puts "Done"
	end

else

	puts "Invalid choice"

end