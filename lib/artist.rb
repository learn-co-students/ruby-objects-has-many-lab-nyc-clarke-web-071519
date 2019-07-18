require_relative "song"
require "pry"
class Artist 

    @@all = []
    attr_accessor :name, :songs
    def initialize(name)
        @name = name 
        @songs = []

        @@all << self.songs 
    end 

    # def songs
    #     Song.all.select do |song|
    #         song.artist == self 
    #     end 
    # end

    def add_song(song)
        song.artist = self 
        self.songs << song
    end 

    def add_song_by_name(song)
       new_song = Song.new(song)
       add_song(new_song)
    end 

    def self.song_count 
        # binding.pry
        @@all.flatten.count
    end 
end 