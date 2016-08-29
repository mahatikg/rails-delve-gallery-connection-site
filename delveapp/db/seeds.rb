# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
birth = Painting.new(title: "Birth of Venus", date: "1484-1486" , movement: "Proto - Renaissance",
painting_image: File.new("db/painting_images/birth.jpg") )
#birth.save
peppermint = Painting.new(title: "The Peppermint Bottle", date: "1839-1906", movement: "Impressionist",
painting_image: File.new("db/painting_images/peppermint.jpg"))
#peppermint.save
campbell = Painting.new(title: "Campbell's Soup Cans", date: "1962" , movement: "Pop",
painting_image: File.new("db/painting_images/warhol.jpg"))
#campbell.save
bigself = Painting.new(title: "Big Self Portrait", date: "1967-1968" , movement: "Contemporary - Realism",
painting_image: File.new("db/painting_images/chuckclose.jpg"))
#bigself.save
bathers = Painting.new(title: "Bathers", date: "1874-1875" , movement: "Impressionist",
painting_image: File.new("db/painting_images/bathers.jpg"))
#bathers.save
gardanne = Painting.new(title: "Gardanne", date: "1885-1886" , movement: "Impressionist",
painting_image: File.new("db/painting_images/Gardanne.jpg"))
#gardanne.save

botti = Artist.new(name: "Sandro Botticelli", contemporary?: false, life_span: "1445-1510")
botti.save
cezanne = Artist.new(name: "Paul Cezanne", contemporary?: false, life_span: "1839-1906")
cezanne.save

warhol = Artist.new(name: "Andy Warhol", contemporary?: false, life_span: "1928-1987")
warhol.save
close = Artist.new(name: "Chuck Close", contemporary?: true, life_span: "1940-Present")
close.save

uffizi = Museum.new(name: "The Uffizi", city: "Florence, Italy")
uffizi.save
nga = Museum.new(name: "The National Gallery of Art", city: "Washington, D.C. U.S.A.")
nga.save
moma = Museum.new(name: "MoMA", city: "New York City, U.S.A.")
moma.save
pace = Museum.new(name: "Pace Gallery", city: "New York City, U.S.A.")
pace.save
met = Museum.new(name:"The Metropolitan Museum of Art", city: "New York City, U.S.A.")
met.save

bg = Gallery.new(name: "Botticelli Gallery", museum_id: 1, gallery_category: "Renaissance")
bg.save
dg = Gallery.new(name: "Chester Dale Gallery", museum_id: 2, gallery_category: "French-Impressionists")
dg.save
ag = Gallery.new(name: "American Gallery", museum_id: 3, gallery_category: "Pop & Contemporary")
ag.save
brooklyng = Gallery.new(name: "Brooklyn", museum_id: 4, gallery_category: "Contemporary")
brooklyng.save
g826 = Gallery.new(name: "Gallery 826", museum_id: 5, gallery_category: "French - Impressionists")
g826.save
mbg = Gallery.new(name: "The Met Breuer", museum_id: 5, gallery_category: "French Art")
mbg.save

cezanne.paintings << peppermint
dg.paintings << peppermint
peppermint.save
cezanne.paintings << bathers
g826.paintings << bathers
bathers.save
cezanne.paintings << gardanne
mbg.paintings << gardanne
gardanne.save

botti.paintings << birth
bg.paintings << birth
botti.save

warhol.paintings << campbell
ag.paintings << campbell
campbell.save

close.paintings << bigself
brooklyng.paintings << bigself
bigself.save

#
# DATA = {
#   :painting_keys =>
#     ["title", "artist_id", "gallery_id", "date", "movement"],
#   :paintings => [
#     ["Birth of Venus", 1, 1, "1484-1486", "Proto - Renaissance"],
#     ["The Peppermint Bottle", 2, 2, "1839-1906", "Impressionist"],
#     ["Campbell's Soup Cans", 3, 3, "1962", "Pop"],
#     ["Big Self Portrait", 4, 4, "1967-1968", "Contemporary - Realism"],
#     ["Bathers", 2, 5, "1874-1875", "Impressionist"],
#     ["Gardanne", 2, 6, "1885-1886", "Impressionist"]
#   ],
#   :artist_keys =>
#    ["name", "contemporary?", "life_span"],
#   :artists => [
#     ["Sandro Botticelli", false, "1445-1510"],
#     ["Paul Cezanne", false, "1839-1906"],
#     ["Andy Warhol", false, "1928-1987"],
#     ["Chuck Close", true, "1940-Present"]
#     # ["Paul Cezanne", false, "1839-1906"]
#   ],
#   :gallery_keys =>
#    ["name", "museum_id", "gallery_category"],
#   :galleries => [
#     ["Botticelli Gallery", 1, "Renaissance"],
#     ["Chester Dale Gallery", 2, "French-Impressionists"],
#     ["American Gallery", 3, "Pop & Contemporary"],
#     ["Brooklyn", 4, "Contemporary"],
#     ["Gallery 826", 5, "French - Impressionists"],
#     ["The Met Breuer", 5, "French Art"]
#   ],
#   :museum_keys =>
#    ["name", "city"],
#   :museums => [
#     ["The Uffizi", "Florence, Italy"],
#     ["The National Gallery of Art", "Washington, D.C. U.S.A"],
#     ["MoMA", "New York City, U.S.A"],
#     ["Pace Gallery", "New York City, U.S.A"],
#     ["The Metropolitan Museum of Art", "New York City, U.S.A"]
#   ]
#   # :a => [
#   #   "Mary Elitch Long",
#   #   "John Elitch"
#   # ]
# }

# def make_paintings
#   DATA[:paintings].each do |painting|
#     new_painting = Painting.new
#     painting.each_with_index do |attribute, index|
#       new_painting.send(DATA[:painting_keys][index] + "=", attribute)
#     end
#     new_painting.save
#   end
# end
#
# def make_museums
#   DATA[:museums].each do |museum|
#     new_museum = Museum.new
#     museum.each_with_index do |attribute, index|
#       new_museum.send(DATA[:museum_keys][index] + "=", attribute)
#     end
#     new_museum.save
#   end
# end
#
# def make_galleries
#   DATA[:galleries].each do |gallery|
#     new_gallery = Gallery.new
#     gallery.each_with_index do |attribute, index|
#       new_gallery.send(DATA[:gallery_keys][index] + "=", attribute)
#     end
#     new_gallery.save
#   end
# end
#
# def make_artists
#   DATA[:artists].each do |artist|
#     new_artist = Artist.new
#     artist.each_with_index do |attribute, index|
#       new_artist.send(DATA[:artist_keys][index] + "=", attribute)
#     end
#     new_artist.save
#   end
# end
#
#
# def main
#   make_artists
#   make_galleries
#   make_museums
#   make_paintings
# end
#
# main

# def main
#   make_users
#   make_admin
#   make_attractions_and_rides
# end
#
# def make_users
#   DATA[:users].each do |user|
#     new_user = User.new
#     user.each_with_index do |attribute, i|
#       new_user.send(DATA[:user_keys][i]+"=", attribute)
#     end
#     new_user.save
#   end
# end
#
# def make_admin
#   DATA[:admins].each do |name|
#     User.create(name: name, admin: true, password: 'password')
#   end
# end
#
# def make_attractions_and_rides
#   DATA[:attractions].each do |attraction|
#     new_attraction = Attraction.new
#     attraction.each_with_index do |attribute, i|
#       new_attraction.send(DATA[:attraction_keys][i] + "=", attribute)
#     end
#     rand(1..8).times do
#       customers = []
#       User.all.each {|u| customers << u if u.admin != true}
#       new_attraction.users << customers[rand(0...customers.length)]
#     end
#     new_attraction.users.each {|c| c.save}
#     new_attraction.save
#   end
# end
#
# main
