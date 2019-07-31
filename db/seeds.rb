User.create!([
  {email: "admin@gmail.com",
   encrypted_password: "$2a$11$ae61JFOpzweuI8BjSP4dW.tScIGGnjGxs8I8VV./vF1XU02T3Lqqq",
   password: "nopassword",
   password_confirmation: "nopassword",
   reset_password_token: nil,
   reset_password_sent_at: nil,
   remember_created_at: nil,
   first_name: nil,
   last_name: nil,
   username: "adminS",
   birthday: nil,
   about: nil,
   avatar: nil,
   privat: false,
   confirmation_token: "qFQstxvZZY8x8aWm5_bX",
   confirmed_at: "2019-07-29 10:45:57",
   confirmation_sent_at: "2019-07-29 10:45:51",
   unconfirmed_email: nil,
   provider: nil,
   uid: nil,
   name: nil,
   image: nil}
])

Film.create!([
  {name: "Star Wars 7", producer: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam", time_create: "2015-12-17", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. AliquamLorem ipsum dolor sit amet, consectetur adipisicing elit. AliquamLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam", picture: Rails.root.join("app/assets/images/star_wars.jpg").open, cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {name: "Roque One", producer: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam", time_create: "2016-12-10", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. AliquamLorem ipsum dolor sit amet, consectetur adipisicing elit. AliquamLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam", picture: Rails.root.join("app/assets/images/roque.jpeg").open, cached_votes_total: 1, cached_votes_score: 1, cached_votes_up: 1, cached_votes_down: 0, cached_weighted_score: 1, cached_weighted_total: 1, cached_weighted_average: 1.0},
  {name: "John Wick 3", producer: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam", time_create: "2019-05-09", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. AliquamLorem ipsum dolor sit amet, consectetur adipisicing elit. AliquamLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam", picture: Rails.root.join("app/assets/images/john_wick.jpeg").open, cached_votes_total: 1, cached_votes_score: -1, cached_votes_up: 0, cached_votes_down: 1, cached_weighted_score: -1, cached_weighted_total: 1, cached_weighted_average: -1.0}
])

Actor.create!([
  {name: "Keanu Reeves", dataroz: "1964-09-02", description: "Keanu Charles Reeves is a Canadian actor and musician. He gained fame for his starring roles in several blockbuster films, including comedies from the Bill and Ted franchise; action thrillers Point ...", avtor: Rails.root.join("app/assets/images/john_wick.jpeg").open},
  {name: "John Boyega", dataroz: "1992-03-17", description: "John Adedayo B. Adegboyega, known professionally as John Boyega, is an English actor known for playing Finn in the 2015 film Star Wars: The Force Awakens and its 2017 sequel Star Wars: The Last Jedi, respectively the seventh and eighth films of the Star Wars series.", avtor: Rails.root.join("app/assets/images/john_boeyga.jpeg").open},
  {name: "Daisy Ridley", dataroz: "1992-08-10", description: "Daisy Jazz Isobel Ridley is an English actress. Born in Westminster and brought up in Maida Vale, Ridley trained in drama at the Tring Park School for the Performing Arts. She began acting in minor guest roles on television and in short films, making her film debut in the independent horror film Scrawl.", avtor: Rails.root.join("app/assets/images/film1.jpeg").open}
])

Post.create!([
  {title: "Star Wars 7 ", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut beatae, consequatur dicta dolorem doloribus minima sapiente suscipit tempora unde vero! Deleniti eum nostrum omnis sequi sint. Et illo praesentium quod.", avatars: [Rails.root.join("app/assets/images/star_wars.jpg").open]},
  {title: "John Wick? Cool?", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. \r\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type\r\n specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ", avatars: [Rails.root.join("app/assets/images/john_wick.jpeg").open]},
  {title: "Roque One, all true about actors and money", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", avatars: [Rails.root.join("app/assets/images/roque.jpeg").open]},
  {title: "Harry Potter after 15 years. What just happened?", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", avatars: [Rails.root.join("app/assets/images/harry_potter.jpg").open]},
  {title: "Hello from 2000, this is lego!!!!!!", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", avatars: [Rails.root.join("app/assets/images/lego_first.jpeg").open, Rails.root.join("app/assets/images/lego_second.png").open]}
])
Tag.create!([
  {name: "Film"},
  {name: "Actor"},
  {name: "Disappointment"},
  {name: "Opinion"}
])
Tagging.create!([
  {tag_id: 2, post_id: 1},
  {tag_id: 3, post_id: 1},
  {tag_id: 1, post_id: 1},
  {tag_id: 4, post_id: 1},
  {tag_id: 1, post_id: 2},
  {tag_id: 4, post_id: 2},
  {tag_id: 2, post_id: 3},
  {tag_id: 3, post_id: 3},
  {tag_id: 1, post_id: 3},
  {tag_id: 2, post_id: 4},
  {tag_id: 1, post_id: 4},
  {tag_id: 2, post_id: 5},
  {tag_id: 1, post_id: 5},
  {tag_id: 4, post_id: 5}
])
ActorsFilm.create!([
  {actor_id: 1, film_id: 1},
  {actor_id: 1, film_id: 2},
  {actor_id: 2, film_id: 1},
  {actor_id: 2, film_id: 2},
  {actor_id: 3, film_id: 1},
  {actor_id: 3, film_id: 2},
  {actor_id: 3, film_id: 3}
])
ActsAsVotable::Vote.create!([
  {votable_type: "Film", votable_id: 1, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Film", votable_id: 2, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Film", votable_id: 3, voter_type: "User", voter_id: 1, vote_flag: false, vote_scope: nil, vote_weight: 1}
])
Comment.create!([
  {body: "nice film!!!!!!!!!!!!!!!!!!!!!!!!!!1", commentable_type: "Film", commentable_id: 1, user_id: 1},
  {body: "i think to", commentable_type: "Comment", commentable_id: 1, user_id: 1}
])
AdminUser.create!(email: 'admin@gmail.com', password: 'nopassword', password_confirmation: 'password') if Rails.env.development?
