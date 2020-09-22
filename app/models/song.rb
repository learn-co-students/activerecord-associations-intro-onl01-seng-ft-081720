class Song < ActiveRecord::Base
  # Songs belong to a genre.
  belongs_to :artist
  belongs_to :genre
end
# William-Newland-Vs-iMac% rake db:migrate
# == 2 CreateGenres: migrating ==================================================
# -- create_table(:genres)
#    -> 0.0007s
# == 2 CreateGenres: migrated (0.0008s) =========================================

# == 3 CreateSongs: migrating ===================================================
# -- create_table(:songs)
#    -> 0.0005s
# == 3 CreateSongs: migrated (0.0006s) ==========================================

# == 4 AddArtistToSongs: migrating ==============================================
# == 4 AddArtistToSongs: migrated (0.0000s) =====================================

# William-Newland-Vs-iMac% learn
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::MONTHNAMES
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::ABBR_MONTHNAMES
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::DAYNAMES
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::ABBR_DAYNAMES
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::ITALY
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::ENGLAND
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::JULIAN
# /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/date-3.0.1/lib/date_core.bundle: warning: already initialized constant Date::GREGORIAN
# Run options: include {:focus=>true}

# All examples were filtered out; ignoring {:focus=>true}

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

# Finished in 0.19188 seconds (files took 1.22 seconds to load)
# 14 examples, 0 failures

# William-Newland-Vs-iMac% rake console
# [1] pry(main)> hello = Song.new(name: "Hello")
# => #<Song:0x00007fd049aca528 id: nil, name: "Hello", artist_id: nil, genre_id: nil>
# [2] pry(main)> hotline_bling = Song.new(name: "Hotline Bling")
# => #<Song:0x00007fd0491e66a0 id: nil, name: "Hotline Bling", artist_id: nil, genre_id: nil>
# [3] pry(main)> adele = Song.new(name: "Adele")
# => #<Song:0x00007fd0482d1200 id: nil, name: "Adele", artist_id: nil, genre_id: nil>
# [4] pry(main)> drake = Artist.new(name: "Drake")
# => #<Artist:0x00007fd048310658 id: nil, name: "Drake">
# [5] pry(main)> hello.artist = adele
# ActiveRecord::AssociationTypeMismatch: Artist(#70266274898980) expected, got #<Song id: nil, name: "Adele", artist_id: nil, genre_id: nil> which is an instance of Song(#70266275177100)
# from /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/activerecord-5.2.2/lib/active_record/associations/association.rb:246:in `raise_on_type_mismatch!'
# [6] pry(main)> hello.artist = adele
# ActiveRecord::AssociationTypeMismatch: Artist(#70266274898980) expected, got #<Song id: nil, name: "Adele", artist_id: nil, genre_id: nil> which is an instance of Song(#70266275177100)
# from /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/activerecord-5.2.2/lib/active_record/associations/association.rb:246:in `raise_on_type_mismatch!'
# [7] pry(main)> hello.artist
# => nil
# [8] pry(main)> hello.artist = adele
# ActiveRecord::AssociationTypeMismatch: Artist(#70266274898980) expected, got #<Song id: nil, name: "Adele", artist_id: nil, genre_id: nil> which is an instance of Song(#70266275177100)
# from /Users/williamnewlandv/.rvm/gems/ruby-2.6.1/gems/activerecord-5.2.2/lib/active_record/associations/association.rb:246:in `raise_on_type_mismatch!'
# [9] pry(main)> Song.find_by(name: 'Adele'
# [9] pry(main)* )  
# => nil
# [10] pry(main)> adele = Artist.new(name: 'Adele')
# => #<Artist:0x00007fd04838f7f0 id: nil, name: "Adele">
# [11] pry(main)> hello.artist = adele
# => #<Artist:0x00007fd04838f7f0 id: nil, name: "Adele">
# [12] pry(main)> hello.artist
# => #<Artist:0x00007fd04838f7f0 id: nil, name: "Adele">
# [13] pry(main)> adele.songs
# => []
# [14] pry(main)> adele.songs.push(hello)
# => [#<Song:0x00007fd049aca528 id: nil, name: "Hello", artist_id: nil, genre_id: nil>]
# [15] pry(main)> adele.save
# => true
# [16] pry(main)> adele
# => #<Artist:0x00007fd04838f7f0 id: 1, name: "Adele">
# [17] pry(main)> hello
# => #<Song:0x00007fd049aca528 id: 1, name: "Hello", artist_id: 1, genre_id: nil>
# [18] pry(main)> hotline_bling.artist = drake
# => #<Artist:0x00007fd048310658 id: nil, name: "Drake">
# [19] pry(main)> drake.songs
# => []
# [20] pry(main)> drake.songs.push(hotline_bling)
# => [#<Song:0x00007fd0491e66a0 id: nil, name: "Hotline Bling", artist_id: nil, genre_id: nil>]
# [21] pry(main)> drake.save
# => true
# [22] pry(main)> drake
# => #<Artist:0x00007fd048310658 id: 2, name: "Drake">
# [23] pry(main)> hotline_bling
# => #<Song:0x00007fd0491e66a0 id: 2, name: "Hotline Bling", artist_id: 2, genre_id: nil>
# [24] pry(main)> someone_like_you = Song.new(name: "Someone Like You")
# => #<Song:0x00007fd049ad3678 id: nil, name: "Someone Like You", artist_id: nil, genre_id: nil>
# [25] pry(main)> someone_like_you.artist = adele
# => #<Artist:0x00007fd04838f7f0 id: 1, name: "Adele">
# [26] pry(main)> someone_like_you.artist
# => #<Artist:0x00007fd04838f7f0 id: 1, name: "Adele">
# [27] pry(main)> adele.songs
# => [#<Song:0x00007fd049aca528 id: 1, name: "Hello", artist_id: 1, genre_id: nil>]
# [28] pry(main)> someone_like_you.save
# => true
# [29] pry(main)> someone_like_you
# => #<Song:0x00007fd049ad3678 id: 3, name: "Someone Like You", artist_id: 1, genre_id: nil>
# [30] pry(main)> adele.songs
# => [#<Song:0x00007fd049aca528 id: 1, name: "Hello", artist_id: 1, genre_id: nil>]
# [31] pry(main)> set_fire_to_the_rain = Song.new(name: "Set Fire to the Rain")
# => #<Song:0x00007fd048ab1d30 id: nil, name: "Set Fire to the Rain", artist_id: nil, genre_id: nil>
# [32] pry(main)> adele.songs.push(set_fire_to_the_rain)
# => [#<Song:0x00007fd049aca528 id: 1, name: "Hello", artist_id: 1, genre_id: nil>,
#  #<Song:0x00007fd048ab1d30 id: 4, name: "Set Fire to the Rain", artist_id: 1, genre_id: nil>]
# [33] pry(main)> set_fire_to_the_rain.artist
# => #<Artist:0x00007fd04838f7f0 id: 1, name: "Adele">
# [34] pry(main)> 
# [35] pry(main)> rolling_in_the_deep = Song.new(name: "Rolling in the Deep")
# => #<Song:0x00007fd048b29128 id: nil, name: "Rolling in the Deep", artist_id: nil, genre_id: nil>
# [36] pry(main)> adele.songs << rolling_in_the_deep
# => [#<Song:0x00007fd049aca528 id: 1, name: "Hello", artist_id: 1, genre_id: nil>,
#  #<Song:0x00007fd048ab1d30 id: 4, name: "Set Fire to the Rain", artist_id: 1, genre_id: nil>,
#  #<Song:0x00007fd048b29128 id: 5, name: "Rolling in the Deep", artist_id: 1, genre_id: nil>]
# [37] pry(main)> pop = Genre.create(name: "pop")
# => #<Genre:0x00007fd048bc8408 id: 1, name: "pop">
# [38] pry(main)> pop.songs << rolling_in_the_deep
# => [#<Song:0x00007fd048b29128 id: 5, name: "Rolling in the Deep", artist_id: 1, genre_id: 1>]
# [39] pry(main)> 
# [40] pry(main)> pop.songs
# => [#<Song:0x00007fd048b29128 id: 5, name: "Rolling in the Deep", artist_id: 1, genre_id: 1>]
# [41] pry(main)> rolling_in_the_deep.genre
# => #<Genre:0x00007fd048bc8408 id: 1, name: "pop">
# [42] pry(main)> 
# [43] pry(main)> rolling_in_the_deep.artist
# => #<Artist:0x00007fd04838f7f0 id: 1, name: "Adele">
# [44] pry(main)> pop.artists
# => [#<Artist:0x00007fd049a73d40 id: 1, name: "Adele">]
# [45] pry(main)> adele.genres
# => [#<Genre:0x00007fd049ae9428 id: 1, name: "pop">]
# [46] pry(main)> 