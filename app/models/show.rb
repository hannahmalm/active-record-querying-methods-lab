class Show < ActiveRecord::Base 

    def self.highest_rating
        self.maximum(:rating)
    end 

    def self.most_popular_show
        #use the method from above
        #search for all the shows ratings - we dont know the highest rating so put in ?
        #when searching for the ratings, find the highest one, and then filter by the first one you find
        self.where("rating = ?", self.highest_rating).first
    end 

    def self.lowest_rating
        self.minimum(:rating)
    end 

    def self.least_popular_show
        #same method as above
        #look at the ratings - we dont know the lowest rating while looking through them which is why we use ?
        self.where("rating = ?", self.lowest_rating).first
    end 

    def self.ratings_sum 
        self.sum(:rating)
    end     

    def self.popular_shows 
        #where rating is > 5 
        self.where("rating > 5")
        #You need to search for the ratings using ?, then plug in 5 
    end 

    def self.shows_by_alphabetical_order 
        #look at the show titles by asc order
        #the column for titles is actually called name - refer to migration
        #it can be helpful to draw out the tables
        self.order(:name)

    end 
end 


#this file was created by running "mkdir app", then "mkdir app/models"
#this is the place where you put all the models from the tests
#these methods are all built into Active Record
