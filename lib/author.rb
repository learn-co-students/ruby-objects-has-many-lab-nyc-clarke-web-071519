require_relative "post"
class Author 

    @@all = []
    attr_accessor :name, :posts
    def initialize(name)
        @name = name 
        @posts = []

        @@all << self.posts
    end 

    # def posts
    #     Post.all.select do |post|
    #         post.author == self 
    #     end 
    # end

    def add_post(post)
        post.author = self 
        self.posts << post
    end 

    def add_post_by_title(title)
       new_post = Post.new(title)
        add_post(new_post)
    end 

    def self.post_count 
        @@all.flatten.count
    end 
end 