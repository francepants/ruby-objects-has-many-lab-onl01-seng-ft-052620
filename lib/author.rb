class Author

    attr_accessor :name, :author

    def initialize(name)
        @name = name
    end

    # has many posts
    def posts
        # has many song: Song.all.select {|song| song.artist == self}
        Post.all.select {|post| post.author == self}
    end

    # takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author
    def add_post(post)
        post.author = self
    end

    # takes in an argument of a post title, creates a new post with it and associates the post and author 
    def add_post_by_title(post_title)
        pT = Post.new(post_title)
        add_post(pT)
    end

    #is a class method that returns the total number of posts associated to all existing authors
    def self.post_count
        Post.all.count
    end
end

# artist example: 
# def add_song_by_name(song_name)
#     song = Song.new(song_name) # song is the new object of the class Song
#     add_song(song) 
# end