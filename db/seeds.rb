# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create({email: "dan@email.com", password_digest:"password", first_name:"Daniel", last_name:"Hovorka"})
  User.create({email: "steve@email.com", password_digest:"password", first_name:"Steven", last_name:"Hovorka"})
  User.create({email: "josh@email.com", password_digest:"password", first_name:"Josh", last_name:"Taylor"})
  User.create({email: "harriet@email.com", password_digest:"password", first_name:"Harriet", last_name:"Wheaton"})
  User.create({email: "norton@email.com", password_digest:"password", first_name:"Norton", last_name:"Smith"})

  Tournament.create({ name:"Australian Open" ,location:"Melbourne, Australia", description:"The first grand slam of the year kicks off in Januray"})
  Tournament.create({ name:"French Open" ,location:"Paris, France", description:"The second major of the season takes place in historic Paris"})
  Tournament.create({ name:"Wimbledon" ,location:"London, England", description:"The third grand slam rich with traditional and history"})
  Tournament.create({ name:"U.S. Open" ,location:"New York City, NY, United States", description:"The last Major of the year in Flushing Meadows"})
  Tournament.create({ name:"Indian Wells" ,location:"Palm Springs, CA, United States", description:"Oasis outside of Los Angeles"})
  Tournament.create({ name:"Monte Carlo Masters" ,location:"Monte Carlo, Monaco", description:"Prestigious clay court masters event set on the ocean"})

Comment.create({ tournament_id:1, user_id:1, content:"I had the pleasure of visiting Melbourne in 2018.  First trip to Australia, quite a long flight but well worth it in the end. Opted to stay in an AirBnB about 20 minute walk from the tournament grounds"})
Comment.create({ tournament_id:1, user_id:2, content:"Had a great time, but wish it had been a bit colder"})
Comment.create({ tournament_id:1, user_id:3, content:"Will never go back"})
Comment.create({ tournament_id:2, user_id:4, content:"Lots of fun"})
Comment.create({ tournament_id:2, user_id:2, content:"I splurged and bought box seats at the tournament, well worth the cost"})
Comment.create({ tournament_id:2, user_id:5, content:"Staying right by the water and was walking distecne to the tournament grounds"})
Comment.create({ tournament_id:3, user_id:1, content:"Highly recomend going to this event"})
Comment.create({ tournament_id:3, user_id:2, content:"Very long flight from where I live but had a great time"})
Comment.create({ tournament_id:3, user_id:3, content:"Visit the concession stand behind court 3 to get a great view of the player entrance"})
Comment.create({ tournament_id:4, user_id:1, content:"Given the chance I would go back"})
Comment.create({ tournament_id:4, user_id:1, content:"Could have used some extra sunscreen, there arent enough shaded areas around"})
Comment.create({ tournament_id:4, user_id:2, content:"I would give this event a 7/10, lots of fun but missing a good drink selection"})
Comment.create({ tournament_id:4, user_id:1, content:"Spend some additional time outside the grounds walking around.  You'll almost certainly run into some of the players"})
Comment.create({ tournament_id:5, user_id:3, content:"Visit here at least once in your life"})
Comment.create({ tournament_id:5, user_id:4, content:"My opinion; you can skip this one"})
Comment.create({ tournament_id:5, user_id:5, content:"spent about 10 days in the city, could not get enough of this area of the world."})
Comment.create({ tournament_id:6, user_id:1, content:"Came for the tennis, stayed for the food."})
Comment.create({ tournament_id:6, user_id:1, content:"expesnsive trip but worth it"})
Comment.create({ tournament_id:6, user_id:4, content:"not keen on writing comments but theres a lot of good info here. My opinion is this is one tournament you cant miss"})
Comment.create({ tournament_id:1, user_id:3, content:"relatively fun, if you're into that sort of thing"})
Comment.create({ tournament_id:1, user_id:1, content:"smelled like garbage everywhere"})


