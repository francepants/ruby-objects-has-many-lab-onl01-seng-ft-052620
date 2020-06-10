class Post
    attr_accessor :title, :author
    #is a class variable set to an array
    @@all = []

    #is initialized with an argument of a title
    # pushes new instances into a class variable called @@all upon initialization
    def initialize(title)
        @title = title
        @@all << self
    end

    #is a class method that returns an array of all post instances that have been created
    def self.all
        @@all
    end

    # knows the name of its author
    # returns nil if the post does not have an author
    def author_name
        if @author == nil
            return nil
        else
            @author.name
        end
    end
end