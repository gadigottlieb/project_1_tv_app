User.destroy_all
Show.destroy_all
Favorite.destroy_all
Actor.destroy_all

gadi = User.create!(
  username: "gadspads24",
  first_name: "Gadi",
  last_name: "Gottlieb",
  password: "qwerty",
  password_confirmation: "qwerty",
  email: "gadigottlieb@gmail.com",
  birthday: "1990-05-16",
  phone: "7120485545"
)

bob = User.create!(
  username: "bob",
  first_name: "Bob",
  last_name: "Abbot",
  password: "qwerty",
  password_confirmation: "qwerty",
  email: "bob@hgmail.com",
  birthday: "2001-05-01",
  phone: "7324045426"
)

curb = Show.create!(
  title: "Curb Your Enthusiasm",
  image_url: "http://spiritualitv.files.wordpress.com/2013/04/51q8oy0jll-_sx500_.jpg",
  first_air_date: "2001-01-01",
  plot: "Larry David says sorry.",
  genre: "Comedy",
  network: "HBO"
)

got = Show.create!(
  title: "Game of Thrones",
  image_url: "http://d1mxyp5ceukbya.cloudfront.net/images/game-of-thrones-posters.jpg",
  first_air_date: "2001-11-15",
  plot: "Everybody dies",
  genre: "Fantasy",
  network: "HBO"
)

bad = Show.create!(
  title: "Breaking Bad",
  image_url: "http://www.kino-govno.com/img/42867/Breaking-Bad-Final-Poster.jpg",
  first_air_date: "2016-02-02",
  plot: "Meth dealer",
  genre: "Drama",
  network: "AMC"
)

Favorite.create(
  user_id: gadi.id,
  show_id: curb.id,
  comment: "Awesome",
  rating: 10
)
Favorite.create(
  user_id: gadi.id,
  show_id: got.id,
  comment: "WTF?",
  rating: 8
)

Favorite.create(
  user_id: bob.id,
  show_id: got.id,
  comment: "King of the North",
  rating: 9
)

Favorite.create(
  user_id: bob.id,
  show_id: bad.id,
  comment: "Meth?",
  rating: 6
)

curb.actors.push(
  Actor.create(name: "Larry David", character: "Larry David", profile_path: "http://d1mxyp5ceukbya.cloudfront.net/images/larry-david-hbo-movie.jpg"),
  Actor.create(name: "Jeff Garlin", character: "Jeff Green", profile_path: "http://ia.media-imdb.com/images/M/MV5BMzY4MDE4OTk2MF5BMl5BanBnXkFtZTcwNjYxMzA2MQ@@._V1_SY317_CR6,0,214,317_AL_.jpg")
)

got.actors.push(
  Actor.create(name: "Sean Bean", character: "Eddard Stark", profile_path: "http://www.hollywoodreporter.com/sites/default/files/imagecache/blog_post_349_width/2011/07/gameofthrones14_a_p.jpg"),
  Actor.create(name: "Jack Gleeson", character: "Joffrey Baratheon", profile_path: "http://static2.hypable.com/wp-content/uploads/2012/08/Game-of-Thrones8.png")
)

bad.actors.push(
  Actor.create(name:"Bryan Cranston", character: "Walter White", profile_path: "http://www.nme.com/images/gallery/2013BryanCranstonPA-15479450070213.jpg"),
  Actor.create(name:"Aaron Paul", character: "Jesse Pinkman", profile_path: "http://ia.media-imdb.com/images/M/MV5BMTY1OTY5NjI5NV5BMl5BanBnXkFtZTcwODA4MjM0OA@@._V1_SX214_CR0,0,214,317_AL_.jpg")
)
