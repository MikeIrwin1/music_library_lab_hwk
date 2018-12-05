require('pg')
require_relative('artist')

class Album

  attr_accessor :title, :genre
  attr_reader :id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
  end

  def save()
    db = PG.connect({dbname: 'music_library', host: 'localhost'})
    sql = "INSERT INTO albums (
    title,
    genre
    )
    VALUES(
      $1, $2
      )
      RETURNING id"
    values = [@title, @genre]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]['id'].to_i
    db.close()
  end

end
