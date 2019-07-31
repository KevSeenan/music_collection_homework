require('pry-byebug')
require_relative('./models/artists.rb')
# require_relative('./models/albums.rb')

artist1 = Artist.new(
  {
    'name' => 'Alice In Chains'
  }
)

artist2 = Artist.new(
  {
    'name' => 'Bob Marley'
  }
)

artist1.save()
artist2.save()

# album1 = Album.new(
#   {
#     'title' => 'Dirt',
#     'genre' => 'Grunge',
#     # 'artist_id' => artist1.id
#   }
# )
#
# album2 = Album.new(
#   {
#     'title' => 'Legend',
#     'genre' => 'Reggae'
#     # 'artist_id' => artist2.id
#   }
# )

binding.pry

nil
