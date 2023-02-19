Director.destroy_all

parent_as_director = Director.create!(
  first_name: "Moira",
  last_name: "Rose",
  email: "crowmother@gmail.com",
  token: 98765,
  google_id: 12345,
  date_of_birth: Date.parse("03/04/1954")
)

parent_as_director.artists.create!(
  username: "child_as_artist",
  password_digest: "fridakahlo"
)

parent_as_director.artists.create!(
  username: "child_2_as_artist",
  password_digest: "botero"
)
