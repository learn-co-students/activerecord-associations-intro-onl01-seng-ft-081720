class Genre < ActiveRecord::Base
  # A genre has many songs.
  # A genre has many artists through songs.
  has_many :songs
  has_many :artists, through: :songs
end
# Song
#   has a name

# Artist
#   has a name

# Genre
#   has a name

# Song Associations
#   has a genre
#   can have an artist
#   can be created with an artist as an attribute
#   can build genres

# Artist Associations
#   can build a song
#   can create a song
#   knows about songs that are affiliated with it
#   can add many songs at the same time
#   knows about its genres

# Genre Associations
#   has many songs
#   is also associated with an artist