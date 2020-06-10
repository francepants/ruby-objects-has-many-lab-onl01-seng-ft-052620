class Song
    attr_accessor :artist, :name

    # is a class variable set to an array
    @@all = []

    # is initialized with an argument of a name
    # pushes new instances into a class variable called @@all upon initialization
    def initialize(name)
        @name = name
        @@all << self
    end

    #is a class method that returns an array of all song instances that have been created
    def self.all #refers to class itself
        @@all
    end

    # knows the name of its artist
    # returns nil if the song does not have an artist
    def artist_name
        if @artist == nil
            return nil
        else
            @artist.name
        end
    end
end