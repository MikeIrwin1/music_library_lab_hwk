require('pry')
require_relative('models/artist')
require_relative('models/album')

artist1 = Artist.new({'name' => 'Nirvana'})
artist1.save

album1 = Album.new({ 'title' => 'Nevermind', 'genre' => 'grunge'})
album1.save



binding.pry
nil
