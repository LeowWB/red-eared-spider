load 'spider.rb'

GITHUB_TEST_PAGE = 'https://leowwb.github.io/testing.html'


puts "Enter URL (leave blank for GitHub test page): "
url = gets.chomp

url = GITHUB_TEST_PAGE if url.length == 0

spoder = Spider::Spider.new
spoder.spide url