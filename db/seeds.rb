# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reflection.destroy_all
Place.destroy_all
Trip.destroy_all
Category.destroy_all
User.destroy_all

Reflection.reset_pk_sequence
Place.reset_pk_sequence
Trip.reset_pk_sequence
Category.reset_pk_sequence
User.reset_pk_sequence

## Users
waverley = User.create!(first_name: "Waverley", last_name: "Leung", username: "wavey", password: "abc123")

## Categories
bar = Category.create!(name: "Bar")
cafe = Category.create!(name: "Cafe")
restaurant = Category.create!(name: "Restaurant")
shopping = Category.create!(name: "Shopping")
cultural_attraction = Category.create!(name: "Cultural Attraction")
nature = Category.create!(name: "Nature")
entertainment = Category.create!(name: "Entertainment")
festivals = Category.create(name: "Festival")
hotel = Category.create!(name: "Hotel and Lodging")
recreation = Category.create!(name: "Recreation")

## Trips
college_days = Trip.create!(title: "Reliving the Jersey Days", description: "I loved where my college was located and felt like visiting.", start_date: DateTime.new(2019, 11, 20), end_date: DateTime.new(2019, 11, 20), user: waverley)
summer_2018 = Trip.create!(title: "Summer Vacation 2018", description: "Trip with the fam to get away from NYC and go to an actual nice beach!", start_date: DateTime.new(2018, 8, 15), end_date: DateTime.new(2018, 8, 22), user: waverley)
vegas_getaway = Trip.create!(title: "Legal in Vegas", description: "Getaway with friends to celebrate turning 21!", start_date: DateTime.new(2018, 7, 7), end_date: DateTime.new(2018, 7, 12), user: waverley)
throwback_up_north = Trip.create!(title: "Throwback to up North", description: "Went back to Vermont for the first time in years. Missed it but also explored the surrounding area this time around.", start_date: DateTime.new(2017, 6, 30), end_date: DateTime.new(2017, 7, 14), user: waverley)
east_to_west = Trip.create!(title: "East to West", description: "First time visiting the West Coast! Spent time with extended family and explored~", start_date: DateTime.new(2017, 6, 20), end_date: DateTime.new(2017, 6, 27), user: waverley)
south_of_the_border = Trip.create!(title: "South of the Border", description: "Visited down south to Texas and wow it was so much fun!", start_date: DateTime.new(2016, 7, 15), end_date: DateTime.new(2017, 7, 23), user: waverley)

## Places
cuban_pete = Place.create!(name: "Cuban Pete's", address: "428 Bloomfield Ave, Montclair, NJ 07042", area: "Montclair", country: "United States", revisit: true, latitude: "40.813217", longitude: "-74.216906", category: restaurant, trip: college_days)
ah_pizz = Place.create!(name: "Ah'Pizz - Montclair", address: "7 N Willow St, Montclair, NJ 07042", area: "Montclair", country: "United States", revisit: true, latitude: "40.812686", longitude: "-74.214682", category: restaurant, trip: college_days)
absolute_zero = Place.create!(name: "Absolute Zero Ice Cream", address: "410 Bloomfield Ave, Montclair, NJ 07042", area: "Montclair", country: "United States", revisit: true, latitude: "40.812997", longitude: "-74.216418", category: restaurant, trip: college_days)
willowbrook = Place.create!(name: "Wilowbrook Mall", address: "1400 Willowbrook Mall, Wayne, NJ 07470", area: "Wayne", country: "United States", revisit: true, latitude: "40.888908", longitude: "-74.259665", category: shopping, trip: college_days)
amc_wayne = Place.create!(name: "AMC Wayne 14", address: "67 Willowbrook Blvd, Wayne, NJ 07470", area: "Wayne", country: "United States", revisit: true, latitude: "40.888108", longitude: "-74.250561", category: entertainment, trip: college_days)

crabcake_factory = Place.create!(name: "The Original Crabcake Factory", address: "12000 Coastal Hwy, Ocean City, MD 21842", area: "Ocean City", country: "United States", revisit: true, latitude: "38.425550", longitude: "-75.055440", category: restaurant, trip: summer_2018)
horizons = Place.create!(name: "Horizons Oceanfront Restaurant", address: "10100 Coastal Hwy, Ocean City, MD 21842", area: "Ocean City", country: "United States", revisit: true, latitude: "38.414420", longitude: "-75.056450", category: restaurant, trip: summer_2018)
abbey_burger_bistro = Place.create!(name: "The Abbey Burger Bistro", address: "12601 Coastal Hwy, Ocean City, MD 21842", area: "Ocean City", country: "United States", revisit: false, latitude: "38.431990", longitude: "-75.055840", category: restaurant, trip: summer_2018)
tanger_rehoboth_beach = Place.create!(name: "Tanger Outlets Rehoboth Beach", address: "36470 Seaside Outlet Dr, Rehoboth Beach, DE 19971", area: "Rehoboth Beach", country: "United States", revisit: true, latitude: "38.719311", longitude: "-75.112488", category: shopping, trip: summer_2018)
carousel_hotel = Place.create!(name: "Carousel Group Ocean City Hotels", address: "11700 Coastal Hwy UNIT 1106, Ocean City, MD 21842", area: "Ocean City", country: "United States", revisit: false, latitude: "38.422760", longitude: "-75.055252", category: hotel, trip: summer_2018)
pho_char = Place.create!(name: "Pho-Char Grill", address: "11805P Coastal Hwy, Ocean City, MD 21842", area: "Ocean City", country: "United States", revisit: true, latitude: "38.424278", longitude: "-75.057312", category: restaurant, trip: summer_2018)
ocean_city_beach = Place.create!(name: "Ocean City Beach", address: "Ocean City, MD 21842", area: "Ocean City", country: "United States", revisit: true, latitude: "38.392231", longitude: "-75.069077", category: nature, trip: summer_2018)
northside_park = Place.create!(name: "Northside Park", address: "200 125th St, Ocean City, MD 21842", area: "Ocean City", country: "United States", revisit: false, latitude: "38.430740", longitude: "-75.058990", category: nature, trip: summer_2018)

shark_reef_aquarium = Place.create!(name: "Shark Reef Aquarium", address: "3950 S Las Vegas Blvd, Las Vegas, NV 89119", area: "Las Vegas", country: "United States", revisit: false, latitude: "36.078938", longitude: "-115.172894", category: cultural_attraction, trip: vegas_getaway)
cirque = Place.create!(name: "O by Cirque du Soleil", address: "3600 S Las Vegas Blvd, Las Vegas, NV 89104", area: "Las Vegas", country: "United States", revisit: true, latitude: "36.161629", longitude: "-115.145576", category: cultural_attraction, trip: vegas_getaway)
las_vegas_outlets = Place.create!(name: "Las Vegas North Premium Outlets", address: "875 S Grand Central Pkwy, Las Vegas, NV 89106", area: "Las Vegas", country: "United States", revisit: true, latitude: "36.163689", longitude: "-115.157959", category: shopping, trip: vegas_getaway)
sapporo_sushi = Place.create!(name: "Sapporo Revolving Sushi", address: "4671 Spring Mountain Rd, Las Vegas, NV 89102", area: "Las Vegas", country: "United States", revisit: true, latitude: "36.125820", longitude: "-115.174870", category: restaurant, trip: vegas_getaway)
cheesecake_factory = Place.create!(name: "Cheesecake Factory", address: "3500 S Las Vegas Blvd, Las Vegas, NV 89109", area: "Las Vegas", country: "United States", revisit: false, latitude: "36.117668", longitude: "-115.172974", category: restaurant, trip: vegas_getaway)
cosmopolitan_las_vegas = Place.create!(name: "The Cosmpolitan of Las Vegas", address: "3708 Las Vegas Blvd S, Las Vegas, NV 89109", area: "Las Vegas", country: "United States", revisit: false, latitude: "36.109821", longitude: "-115.176048", category: restaurant, trip: vegas_getaway)

trapp_lodge = Place.create!(name: "Trapp Family Lodge", address: "700 Trapp Hill Rd, Stowe, VT 05672", area: "Stowe", country: "United States", revisit: true, latitude: "44.465569", longitude: "-72.744637", category: hotel, trip: throwback_up_north)
piecasso = Place.create!(name: "Piecasso", address: "1899 Mountain Rd, Stowe, VT 05672", area: "Stowe", country: "United States", revisit: true, latitude: "44.473961", longitude: "-72.714653", category: restaurant, trip: throwback_up_north)
tratorria_la_festa = Place.create!(name: "Trattoria La Festa", address: "4080 Mountain Rd, Stowe, VT 05672", area: "Stowe", country: "United States", revisit: false, latitude: "44.494930", longitude: "-72.741460", category: restaurant, trip: throwback_up_north)
laughing_moon = Place.create!(name: "Laughing Moon Chocolates", address: "78 S Main St, Stowe, VT 05672", area: "Stowe", country: "United States", revisit: false, latitude: "44.465230", longitude: "-72.689000", category: shopping, trip: throwback_up_north)
stowe_craft = Place.create!(name: "Remarkable Home at Stowe Craft", address: "34 S Main St, Stowe, VT 05672", area: "Stowe", country: "United States", revisit: false, latitude: "44.465340", longitude: "-72.688180", category: shopping, trip: throwback_up_north)
the_boutique = Place.create!(name: "The Boutique", address: "38 Main St, Stowe, VT 05672", area: "Stowe", country: "United States", revisit: true, latitude: "44.465340", longitude: "-72.686660", category: shopping, trip: throwback_up_north)
ben_jerry = Place.create!(name: "Ben & Jerry's Ice Cream Factory", address: "1281 Waterbury-Stowe Road, VT-100, Waterbury Village Historic District, VT 05676", area: "Waterbury", country: "United States", revisit: false, latitude: "44.352699", longitude: "-72.740532", category: cultural_attraction, trip: throwback_up_north)
green_mountain = Place.create!(name: "Green Mountain Coffee Café & Visitor Center", address: "1 Rotarian Place, Waterbury Village Historic District, VT 05676", area: "Waterbury", country: "United States", revisit: true, latitude: "44.335110", longitude: "-72.751860", category: cultural_attraction, trip: throwback_up_north)
cityplace_burlington = Place.create!(name: "CityPlace Burlington", address: "49 Church St, Burlington, VT 05401", area: "Burlington", country: "United States", revisit: true, latitude: "44.478870", longitude: "-73.212900", category: shopping, trip: throwback_up_north)
city_hall_park = Place.create!(name: "City Hall Park", address: "Burlington, VT 05401", area: "Burlington", country: "United States", revisit: true, latitude: "44.477409", longitude: "-73.211060", category: nature, trip: throwback_up_north)
asiana_house = Place.create!(name: "Asiana House", address: "191 Pearl St, Burlington, VT 05401", area: "Burlington", country: "United States", revisit: false, latitude: "44.480370", longitude: "-73.211470", category: restaurant, trip: throwback_up_north)
sarducci = Place.create!(name: "Sarducci's", address: "3 Main St, Montepelier, VT 05401", area: "Montepelier", country: "United States", revisit: true, latitude: "44.257695", longitude: "-72.576594", category: restaurant, trip: throwback_up_north)
pho_capital = Place.create!(name: "Pho Capital", address: "107 State St, Montepelier, VT 05602", area: "Montepelier", country: "United States", revisit: true, latitude: "44.261391", longitude: "-72.578909", category: restaurant, trip: throwback_up_north)

space_needle = Place.create!(name: "Space Needle", address: "400 Broad St, Seattle, WA 98109", area: "Seattle", country: "United States", revisit: false, latitude: "47.620513", longitude: "-122.349304", category: cultural_attraction, trip: east_to_west)
hourglass_escapes = Place.create!(name: "Hourglass Escapes", address: "3131 Western Ave #422b, Seattle, WA 98121", area: "Seattle", country: "United States", revisit: true, latitude: "47.617995", longitude: "-122.356331", category: recreation, trip: east_to_west)
kerry_park = Place.create!(name: "Kerry Park", address: "211 W Highland Dr, Seattle, WA 98119", area: "Seattle", country: "United States", revisit: true, latitude: "47.629477", longitude: "-122.359936", category: nature, trip: east_to_west)
kobe_terrace = Place.create!(name: "Kobe Terrace", address: "650 S Main St, Seattle, WA 98104", area: "Seattle", country: "United States", revisit: true, latitude: "47.600373", longitude: "-122.324546", category: nature, trip: east_to_west)
woodland_park_zoo = Place.create!(name: "Woodland Park Zoo", address: "5500 Phinney Ave N, Seattle, WA 98109", area: "Seattle", country: "United States", revisit: false, latitude: "47.666312", longitude: "-122.349302", category: cultural_attraction, trip: east_to_west)
kaname_bar = Place.create!(name: "Kaname Izakaya and Shochu Bar", address: "610 S Jackson St, Seattle, WA 98109", area: "Seattle", country: "United States", revisit: true, latitude: "47.599351", longitude: "-122.32585", category: bar, trip: east_to_west)
hard_rock_cafe = Place.create!(name: "Hard Rock Cafe", address: "611 Pike St, Seattle, WA 98109", area: "Seattle", country: "United States", revisit: false, latitude: "47.609224", longitude: "-122.339425", category: restaurant, trip: east_to_west)

houston_zoo = Place.create!(name: "Houston Zoo", address: "6200 Hermann Park Dr, Houston, TX 77030", area: "Houston", country: "United States", revisit: false, latitude: "29.710360", longitude: "-95.391029", category: cultural_attraction, trip: south_of_the_border)
ono_poke = Place.create!(name: "Ono Poke", address: "607 Richmond Ave, Houston, TX 77006", area: "Houston", country: "United States", revisit: true, latitude: "29.734130", longitude: "-95.387530", category: restaurant, trip: south_of_the_border)
houston_museum_natural_science = Place.create!(name: "Houston Museum of Natural Science", address: "5555 Hermann Park Dr, Houston, TX 77030", area: "Houston", country: "United States", revisit: true, latitude: "29.720900", longitude: "-95.389008", category: cultural_attraction, trip: south_of_the_border)
kata_robata = Place.create!(name: "Kata Robata", address: "3600 Kirby Dr suite h, Houston, TX 77098", area: "Houston", country: "United States", revisit: true, latitude: "29.733509", longitude: "-95.419197", category: restaurant, trip: south_of_the_border)
oishii = Place.create!(name: "Oishii", address: "3764 Richmond Ave, Houston, TX 77046", area: "Houston", country: "United States", revisit: true, latitude: "29.733110", longitude: "-95.436900", category: restaurant, trip: south_of_the_border)
katz = Place.create!(name: "Katz's Deli & Bar", address: "616 Westheimer Rd, Houston, TX 77006", area: "Houston", country: "United States", revisit: false, latitude: "29.7445949", longitude: "-95.3890264", category: restaurant, trip: south_of_the_border)

## Reflections
cuban_pete_reflection = Reflection.create!(place: cuban_pete, date_visited: DateTime.new(2019, 11, 20), rating: 7, content: "The best go to place for good food and drinks. Always a great time! However, it's always super crowded and loud so it's better to just eat and go", media: "https://res.cloudinary.com/dpqssv1uu/image/upload/v1605219101/cuban-pete_x4t2qn.jpg")
ah_pizz_reflection = Reflection.create!(place: ah_pizz, date_visited: DateTime.new(2019, 11, 20), rating: 10, content: "My favorite go to spot in Montclair! It was great as always and the broccoli rabe and sausage calzone was delicious~ Can't wait to go back again")
absolute_zero_reflection = Reflection.create!(place: absolute_zero, date_visited: DateTime.new(2019, 11, 20), rating: 9, content: "The best rolled ice cream I've ever had! The thai tea flavor is my favorite")
willowbrook_reflection = Reflection.create!(place: willowbrook, date_visited: DateTime.new(2019, 11, 20), rating: 8, content: "So many stores with a huge variety. I'm always able to find something there!")
amc_wayne_reflection = Reflection.create!(place: amc_wayne, date_visited: DateTime.new(2019, 11, 20), rating: 9, content: "Love this movie theater! Since it's out of the way it's not super crowded, and makes for the perfect movie night.")

crabcake_factory_reflection = Reflection.create!(place: crabcake_factory, date_visited: DateTime.new(2018, 8, 15), rating: 8, content: "When we first arrived after driving for the whole day we went here. There was a 15 minute wait not too bad, and not much of a waiting area, but the crabcakes were delicious~")
horizons_reflection = Reflection.create!(place: horizons, date_visited: DateTime.new(2018, 8, 17), rating: 8, content: "So. Much. Food. And it's all so delicious! Highlights include the prime rib with au jus and mashed potatoes.", media: "https://res.cloudinary.com/dpqssv1uu/image/upload/v1605218812/horizons-oceanfront_b7ehkt.jpg")
abbey_burger_bistro_reflection = Reflection.create!(place: abbey_burger_bistro, date_visited: DateTime.new(2018, 8, 16), rating: 4, content: "Your average burger place, nothing special. Not bad... but not good.", media: "https://res.cloudinary.com/dpqssv1uu/image/upload/v1605218853/abbey-burger_d6gusv.jpg")
pho_char_reflection1 = Reflection.create!(place: pho_char, date_visited: DateTime.new(2018, 8, 16), rating: 10, content: "Wow was not at all expecting such a great Vietnamese spot in Ocean City! The bowls were HUGE and the workers were all so nice. Definitely need to go back!")
pho_char_reflection2 = Reflection.create!(place: pho_char, date_visited: DateTime.new(2018, 8, 18), rating: 10, content: "Again, the workers are amazing. We arrived half an hour before closing and they staff were all cleaning up when we walked in. But they still served us, and didn't rush us out at all. Officially my favorite place in OC!")
carousel_hotel_reflection = Reflection.create!(place: carousel_hotel, date_visited: DateTime.new(2018, 8, 15), rating: 4, content: "Overall wasn't terrible but I am never going back. So much noise in the area and the beach spot wasn't even as nice. Also people were constantly smoking and I could faintly smell it in the room.")
ocean_city_beach_reflection = Reflection.create!(place: ocean_city_beach, date_visited: DateTime.new(2018, 8, 16), rating: 8, content: "A great beach. Love how clean it is and my feet don't feel like they're dying walking on the sand.")

trapp_lodge_reflection = Reflection.create!(place: trapp_lodge, date_visited: DateTime.new(2017, 7, 7), rating: 10, content: "Loved visiting this place with so many other memories. There's a beautiful view and I really did feel like I was in The Sound of Music.")
piecasso_reflection = Reflection.create!(place: piecasso, date_visited: DateTime.new(2017, 7, 8), rating: 8, content: "So. Much. AMAZING PIZZA! Did not expect it to be so good; so many choices and creative selections. I'm totally a sauce person and the sauce was to die for!")
pho_capital_reflection1 = Reflection.create!(place: pho_capital, date_visited: DateTime.new(2017, 7, 12), rating: 7, content: "It was packed for lunch! Didn't have to wait long but was not expecting there to be so many people since the place is pretty big. Food was delicious but need to go back again! Didn't expect there to be a partking lot outside, so that was nice too!")
pho_capital_reflection2 = Reflection.create!(place: pho_capital, date_visited: DateTime.new(2017, 7, 13), rating: 7, content: "Unfortunately they were closed when we arrived for lunch and left a note on the door that there was a family emergency. Appreciate the note and hope to come back next time.")
stowe_craft_reflection = Reflection.create!(place: stowe_craft, date_visited: DateTime.new(2017, 7, 10), rating: 5, content: "Pretty large place with lots of different (mostly handmade) furniture. Some things were really creative and others were eh, okay. While it was nice to see, wouldn't go back.")
the_boutique_reflection = Reflection.create!(place: the_boutique, date_visited: DateTime.new(2017, 7, 8), rating: 8, content: "Always love stopping in this store and seeing what they have. Selection is nice and different the what I'm used to.")
laughing_moon_reflection = Reflection.create!(place: laughing_moon, date_visited: DateTime.new(2017, 7, 10), rating: 7, content: "Your average small fancy chocolate place. The staff were nice but didn't really see anything special that I couldn't get from somewhere else. If I'm craving nice quality chocolate I'd go back, otherwise I can skip it.")
ben_jerry_reflection = Reflection.create!(place: ben_jerry, date_visited: DateTime.new(2017, 7, 9), rating: 5, content: "Of course it being the middle of summer and an ice cream factory it was packed with families. The factory tour we didn't even get to walk in the factory or observe it; we just watched a documentary. They had only nut ice cream samples at the end too. Nice to see once, but not twice.", media: "https://res.cloudinary.com/dpqssv1uu/image/upload/v1605213442/ben-and-jerrys-wall_u6tbm3.jpg")
cityplace_burlington_reflection = Reflection.create!(place: cityplace_burlington, date_visited: DateTime.new(2017, 7, 11), rating: 7, content: "A huge mall in the middle of the street! Went in to check out the stores and get a break from the heat outside. Didn't get anything, but would definitely check it out again if I'm in the area.", media: "https://res.cloudinary.com/dpqssv1uu/image/upload/v1605218745/cityplaceBurlington_tpgf7c.jpg")
sarducci_reflection = Reflection.create!(place: sarducci, date_visited: DateTime.new(2017, 7, 11), rating: 9, content: "Delicious food! We had to wait about 20 minutes but it was totally worth it.")
asiana_house_reflection = Reflection.create!(place: asiana_house, date_visited: DateTime.new(2017, 7, 11), rating: 4, content: "Was craving sushi and when I saw it in the area I went for it! I don't regret it but I definitely wouldn't go back- just wasn't the same.")
green_mountain_reflection = Reflection.create!(place: green_mountain, date_visited: DateTime.new(2017, 7, 7), rating: 10, content: "Never visited before but definitely want to go back. So interesting to see all the different coffee & tea they had that I've never seen down by home before. Plus it was good~", media: "https://res.cloudinary.com/dpqssv1uu/image/upload/v1605213514/green-mountain-coffee-visitor-center-interior_rirrhy.jpg")
tratorria_la_festa_reflection = Reflection.create!(place: tratorria_la_festa, date_visited: DateTime.new(2017, 7, 12), rating: 6, content: "It was really dark in there so I had to put my menu by the candle on the table. Food was good, but nothing special.")

puts "🛫🛫🛫🛫🛫🛫"