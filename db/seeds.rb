# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'

Trail.destroy_all

# User.destroy_all
# url = `https://www.trailrunproject.com/data/get-trails?lat=40.0274&lon=-105.2519&maxDistance=200&maxResults=500&key=${process.env.TRAIL_AP}`
trailurl = RestClient.get(`https://www.trailrunproject.com/data/get-trails?lat=40.0274&lon=-105.2519&maxDistance=200&maxResults=500&key=`${process.env.TRAIL_AP}`)
trail_array = JSON.parse(trailurl)



# ques_array["blackCards"].each do |question|
# Question.create(question: question["text"], category: "General")
# rm = RestClient.get('https://rickandmortyapi.com/api/character/')
# rm_array = JSON.parse(rm)["results"]

trail_array["trails"].each do |x|
    Trail.create(
        name: x["name"],
        category: x["type"],
        summary: x["summary"],
        difficulty: x["difficulty"],
        stars: x["stars"],
        star_votes: x["starVotes"],
        location: x["location"],
        url: x["url"],
        imgSqSmall: x["imgSqSmall"],
        imgSmall: x["imgSmall"],
        imgSmallMed: x["imgSmallMed"],
        imgMedium: x["imgMedium"],
        length: x["length"],
        ascent: x["ascent"],
        descent: x["descent"],
        high: x['high'],
        low: x["low"],
        longitude: x["longitude"],
        latitude: x["latitude"],
        conditionStatus: x["conditionStatus"],
        conditionDetails: x["conditionDetails"],
        conditionDate: x["conditionDate"]

        )
    end 
    
    # a1 = Answer.create(answer: "answers to the code challenge", question_id:54, user_id:1)
    # a2 = Answer.create(answer: "cocaine", question_id:58, user_id:1)


puts "seed"