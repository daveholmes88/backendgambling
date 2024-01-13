# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'net/http'
require 'open-uri'
require 'json'
require 'byebug'

url = 'https://www.balldontlie.io/api/v1/teams'
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
response_array = JSON.parse(response.body)
response_array['data'].map do |team|
    byebug
    Team.create(name: team['name'], 
    games_played: 0, 
    off_score: 0, 
    off_miss: 0, 
    def_score: 0, 
    def_miss: 0)
end

