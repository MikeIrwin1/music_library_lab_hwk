require('pry')
require_relative('models/artist')
require_relative('models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'Nirvana'})
artist2 = Artist.new({'name' => 'Van Halen'})
artist1.save
artist2.save

album1 = Album.new({ 'title' => 'Nevermind', 'genre' => 'grunge', 'artist_id' => artist1.id})
album2 = Album.new({ 'title' => 'In Utero', 'genre' => 'grunge', 'artist_id' => artist1.id})
album3 = Album.new({ 'title' => 'Bleach', 'genre' => 'grunge', 'artist_id' => artist1.id})
album4 = Album.new({ 'title' => '1984', 'genre' => 'rock', 'artist_id' => artist2.id})
album4 = Album.new({ 'title' => '5150', 'genre' => 'rock', 'artist_id' => artist2.id})
album1.save
album2.save
album3.save
album4.save

artists = Artist.all()
albums = Album.all()

catalogue = artist1.albums
nirvana = album1.artist
van_halen = Artist.find(artist2.id)
nevermind = Album.find(album1.id)


binding.pry
nil
