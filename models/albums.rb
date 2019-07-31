require_relative('../db/sql_runner.rb')
class Album

  attr_reader :title, :genre, :artist_id

  def initialize(album)
    @id = album['id'].to_i if album['id']
    @title = album['title']
    @genre = album['genre']
    @artist_id = album['artist_id'].to_i()
  end


end
