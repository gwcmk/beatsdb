# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
u = User.new(
    username: "admin",
    email: "admin@example.com",
    password: "1234",
    password_confirmation: "1234",
    admin: true
)
u.skip_confirmation!
u.save!



# Test user accounts
(1..5).each do |i|
  u = User.new(
      username: "user#{i}",
      email: "user#{i}@example.com",
      password: "1234",
      password_confirmation: "1234"
  )
  u.skip_confirmation!
  u.save!

  puts "#{i} test users created..." if (i % 5 == 0)

end

song = Song.new(
      title: "New Slaves",
      artist: "Kanye West",
      album: "Yeezus",
      url: "http://www.youtube.com/watch?v=dT3swdCJrrg",
      image: "http://i.ytimg.com/vi/UY982Uo2TPI/maxresdefault.jpg",
      description: "PRAISE YEEZUS"

  )
  song.save

samp1 = Sample.new(
        starting_time: "1:10",
        other_times: "",
        artist: "Someone",
        url: "http://www.youtube.com/watch?v=dT3swdCJrrg",
        description: "[I'm an inline-style link](https://www.google.com)",
        song_id: 1

  )
  samp1.save

samp2 = Sample.new(
        starting_time: "0:30",
        other_times: "",
        artist: "Someone Else",
        url: "http://www.youtube.com/watch?v=dT3swdCJrrg",
        description: "> Blockquotes are very handy in email to emulate reply text.  > This line is part of the same quote.",
        song_id: 1

  )
  samp2.save

ele1 = Element.new(
        starting_time: "1:10",
        other_times: "",
        source: "Someone",
        description: "[I'm an inline-style link](https://www.google.com)",
        song_id: 1

  )
  ele1.save

ele2 = Element.new(
        starting_time: "0:30",
        other_times: "",
        source: "Someone Else",
        description: "> Blockquotes are very handy in email to emulate reply text.  > This line is part of the same quote.",
        song_id: 1

  )
  ele2.save
