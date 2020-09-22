class Artist < ActiveRecord::Base
  # Artists have many songs and a song belongs to an artist.
  # Artists have many genres through songs.
  has_many :songs
  has_many :genres, through: :songs
end
