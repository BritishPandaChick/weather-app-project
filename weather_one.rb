require 'rubygems'
require 'yahoo_weatherman'

# Get user location
puts "What is your location? Put your zip code or city."
location = gets.to_s

# Look up location and figure out what the weather is
client = Weatherman::Client.new
weather_page = client.lookup_by_location(location)
temp = weather_page.condition["temp"].to_s
weather = weather_page.condition["text"].downcase

case(weather)
  when("sunny" || "mostly sunny")
    puts "It's" + temp + "degrees Celscius and lots of sun."
  when("cloudy")
    puts "It's" + temp + "degrees Celsius and lots of clouds."
  when("partly cloudy")
    puts "It's" + temp + "degrees Celsius and there will be some clouds."
  when("rainy")
    puts "It's" + temp + "degrees Celsius and let's make it rain!"
  when("snowy")
    puts "It's" + temp + "degrees Celsius and snow is heading this way."
  when("fair")
    puts "It's" + temp + "degrees Celsius and it is fair outside today."
  else
    puts("Sorry, I don't know what the weather is going to be like today. Go outside and see for yourself.")
end

# Message that tells user what the temp and weather conditions are
puts "Currently, it is " + temp + " degrees Celsius."
puts "Weather conditions are " + weather + "."

weather_page.methods
weather_page.forecasts
