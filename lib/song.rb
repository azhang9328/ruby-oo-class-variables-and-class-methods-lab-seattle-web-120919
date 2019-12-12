class Song
    attr_accessor :name, :genre, :artist

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @@count += 1

        @artist = artist
        @@artists.push(artist)

        @genre = genre
        @@genres.push(genre)

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genres 
        @@genres.uniq
    end

    def self.genre_count
        genrehash = {}
        @@genres.each do |genre|
            if !genrehash[genre]
                genrehash[genre] = 1
            else 
                genrehash[genre] += 1    
            end     
        end
        genrehash
    end

    def self.artist_count
        artisthash = {}
        @@artists.each do |genre|
            if !artisthash[genre]
                artisthash[genre] = 1
            else 
                artisthash[genre] += 1    
            end     
        end
        artisthash
    end
end