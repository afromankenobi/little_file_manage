#!/usr/bin/ruby
# contract killer text here: https://gist.github.com/malarkey/4031110

file = File.open('contract_killer.txt')

# read the file as string, separate strings by whitespaces
# iterate each word and remove "[ , ] : . ?" characters
words = file.read.split(' ').each do |w|
  w.gsub!(/\[|\]|:|,|\.|\?/, '')
end

file.close

puts words
