# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = User.create(name: "Diego", email: "Diego@diego.cl")

5.times do |f|
	b = Genre.create(name: "Genre #{f}")
	c = Song.create(name: "Song #{f}", duration: 50*f, genre_id: b.id)
	d = UserSong.create(position: f, user_id: a.id, song_id: c.id)
end