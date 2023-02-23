Director.destroy_all

parent_as_director = Director.create!(
  first_name: "Moira",
  last_name: "Rose",
  email: "crowmother@gmail.com",
  token: 98765,
  google_id: 12345,
  date_of_birth: Date.parse("03/04/1954")
)

child_1_as_artist = parent_as_director.artists.create!(
  username: "child_1_as_artist",
  password_digest: "littlebitAlexis"
)

child_2_as_artist = parent_as_director.artists.create!(
  username: "child_2_as_artist",
  password_digest: "ewDavid"
)

child_1_as_artist.images.create!(
  title: "Sample Art 1",
  description: "Test Image 1",
  tags: nil
)

child_2_as_artist.images.create!(
  title: "Sample Art 2",
  description: "Test Image 2",
  tags: nil,
  privacy_status: 2
)
