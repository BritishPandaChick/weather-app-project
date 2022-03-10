require 'rubygems'
require 'yahoo_weatherman'

# Get user location
puts "What is your location? Put your zip code or city."
location = gets.to_s

# Looks up location and checks the weather
def get_location(location)
  client = Weatherman::Client.new
  client.lookup_by_location(location)
end

weather = get_location(location)

# Shows the forecast for the weather
weather.forecasts.each do|forecast|
  puts forecast["day"].to_s + " is going to be " + forecast["text"].downcase + " with a low of " + forecast["low"].to_s + " and a high of " + forecast["high"].to_s
end

get_location(location)
today = Time.now.strftime('%w').to_i