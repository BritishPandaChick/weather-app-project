require 'rubygems'
require 'yahoo_weatherman'


puts "What is your location? Put your zip code or city."
location = gets.to_s

def get_location(location)
client = Weatherman::Client.new
client.lookup_by_location(location)
end

weather = get_location(location)

weather.forecasts.each do|forecast|
puts forecast["day"].to_s + " is going to be " + forecast["text"].downcase + " with a low of " + forecast["low"].to_s + " and a high of " + forecast["high"].to_s
end

get_location(location)
today = Time.now.strftime('%w').to_i