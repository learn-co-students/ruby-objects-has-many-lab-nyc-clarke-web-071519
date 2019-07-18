require "pry"
require_relative "artist"

class Song 
    @@all = []
    attr_accessor :name, :artist
    def initialize(name)
        @name = name 
        
        @@all << self
    end 

    def self.all
        @@all
    end 

    def name 
        @name 
    end 

    def artist_name 
        if self.artist == nil
            return nil
        else 
            self.artist.name
        end 
    end 

end 