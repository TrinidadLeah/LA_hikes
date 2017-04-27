# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Hike.destroy_all

user = User.create name: "Trin" , email: "trin@email.com", password: "stuff"

hikes = [{
  user: user,
  location: "Runyon Canyon",
  image_uri: "http://i.imgur.com/kq28FU1.jpg",
  description: "Hammock before they sold out vaporware, celiac thundercats heirloom wayfarers sartorial small batch. Marfa plaid vice before they sold out artisan scenester. Ugh post-ironic whatever fashion axe. Kale chips helvetica subway tile listicle."
}, {
  user: user,
  location: "Chantry Flats",
  image_uri: "http://i.imgur.com/IsLM2nm.jpg",
  description: "Echo park pok pok ethical, glossier hammock put a bird on it beard quinoa synth biodiesel try-hard four dollar toast post-ironic four loko gluten-free."
}, {
  user: user,
  location: "Mt. Wilson",
  image_uri: "http://i.imgur.com/t2Hf5Xn.jpg",
  description: "Green juice schlitz +1 four loko iPhone, ramps meditation cray brooklyn you probably haven't heard of them kitsch sustainable shabby chic listicle gochujang."
}, {
  user: user,
  location: "Old Mine Trail",
  image_uri: "http://i.imgur.com/AtbrCd9.jpg",
  description: "Cred mumblecore cliche, chartreuse health goth semiotics farm-to-table blue bottle pug letterpress."
}, {
  user: user,
  location: "Yucca Trail",
  image_uri: "http://i.imgur.com/6Qgr43L.jpg",
  description: " Meditation butcher mlkshk, yuccie cornhole pok pok coloring book cronut iPhone succulents vape gastropub affogato. "
}, {
  user: user,
  location: "Joshua Tree",
  image_uri: "http://i.imgur.com/qYha1Fi.jpg",
  description: "Listicle hot chicken chambray jean shorts selvage wolf pork belly letterpress kitsch."
}]

Hike.create hikes

