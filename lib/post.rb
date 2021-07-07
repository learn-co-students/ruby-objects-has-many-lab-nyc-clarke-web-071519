require_relative "author"
class Post
    @@all = []
    attr_accessor :author, :title 
    def initialize(title)
        @title = title 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def name 
        @name 
    end 

    def author_name 
        if Post.author == nil
            return nil
        else 
            return Post.author
        end 
    end 

    def author_name 
        if self.author == nil
            return nil
        else 
            self.author.name
        end 
    end 

end 