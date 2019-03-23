load 'spider.rb'

puts "Enter URL: "
url = gets.chomp

spoder = Spider::Spider.new
spoder.spide url