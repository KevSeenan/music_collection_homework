require_relative('../db/sql_runner.rb')
# require_relative('./artists.rb')

class Album

  attr_reader :title, :genre

  def initialize(album)
    @id = album['id'].to_i if album['id']
    @title = album['title']
    @genre = album['genre']
    # @artist_id = album['artist_id'].to_i()
  end

  def save()
    sql = "INSERT INTO albums (title, genre)
    VALUES ($1, $2) RETURNING id"
    values = [@title, @genre]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end


end
