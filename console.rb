require('pry')
require_relative('models/artist')
require_relative('models/album')

artist1 = Artist.new({'name' => 'Nirvana'})
artist2 = Artist.new({'name' => 'Van Halen'})
artist1.save
artist2.save

album1 = Album.new({ 'title' => 'Nevermind', 'genre' => 'grunge'})
album1.save

artists = Artist.all()
albums = Album.all()

binding.pry
nil
