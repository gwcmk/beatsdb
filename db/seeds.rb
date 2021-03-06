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

song1 = Song.new(
      title: "New Slaves",
      artist: "Kanye West",
      features: "",
      producers: "Kanye West, Ben Bronfman, Mike Dean, Travis Scott, Noah Goldstein, Sham Joseph, Che Pope",
      album: "Yeezus",
      url: "http://www.youtube.com/watch?v=dT3swdCJrrg",
      image: "http://i.imgur.com/WxOSUmo.jpg",
      description: "PRAISE YEEZUS"

  )
  song1.save

samp1 = Sample.new(
        starting_time: "0:00",
        other_times: "",
        artist: "Teachers",
        url: "",
        description: "The distinctive riff from New Slaves originated from a demo by Benjamin Bronfman, a member of a collective known as the Teachers. Link: [http://teachers.fm/](http://teachers.fm/)",
        song_id: 1

  )
  samp1.save

samp2 = Sample.new(
        starting_time: "2:51",
        other_times: "",
        artist: "Omega",
        url: "http://www.youtube.com/watch?v=CGt-rTDkMcM",
        description: "The sample begins at 0:30.",
        song_id: 1

  )
  samp2.save

ele1 = Element.new(
        starting_time: "1:20",
        other_times: "",
        source: "Verse 2",
        description: "[Kanye called this the \"best rap verse of all time.\"](https://twitter.com/kanyewest/status/358614185086693377)",
        song_id: 1

  )
  ele1.save

song2 = Song.new(
      title: "I Don't Fuck With You",
      artist: "Big Sean",
      features: "E-40",
      producers: "DJ Mustard, Kanye West, DJ Dahi",
      album: "I Don't Fuck With You",
      url: "http://www.youtube.com/watch?v=cZaJYDPY-YQ",
      image: "http://thumbs.hh.ulximg.com/public/img/song/500_1410553070_artworks_000090836493_ld5aa3_t500x500_42.jpg",
      description: "This song is the lead single for Big Sean's upcoming album. [Despite common belief, this song is not about Naya Rivera.](https://www.youtube.com/watch?v=xHg_RNa4pEc#t=140)"

  )
  song2.save

samp3 = Sample.new(
        starting_time: "0:19",
        other_times: "4:29",
        artist: "D.J. Rogers",
        url: "http://www.youtube.com/watch?v=slLZTCkKCDI",
        description: "The sample starts at 0:07. This part of the song was produced by Kanye West.",
        song_id: 2

  )
  samp3.save

song3 = Song.new(
      title: "6 God",
      artist: "Drake",
      features: "",
      producers: "Boi-1da, SykSense",
      album: "6 God",
      url: "http://www.youtube.com/watch?v=NHZPpzLe73Y",
      image: "https://i1.sndcdn.com/artworks-000095053782-whizz1-t500x500.jpg",
      description: "[This was one of the songs that Drake released on October 25, 2014.](http://pitchfork.com/news/57203-drake-drops-three-tracks-6-god-how-bout-now-heat-of-the-moment/)"

  )
  song3.save

samp4 = Sample.new(
        starting_time: "0:02",
        other_times: "",
        artist: "David Wise",
        url: "http://www.youtube.com/watch?v=CFRsMztuM30",
        description: "The sample starts at 0:49. [Producer SykSense confirmed this on Twitter](http://i.imgur.com/kbkpsT6.png)",
        song_id: 3

  )
  samp4.save

song4 = Song.new(
      title: "Love Sosa",
      artist: "Chief Keef",
      features: "",
      producers: "Young Chop",
      album: "Finally Rich",
      url: "http://www.youtube.com/watch?v=YWyHZNBz6FE",
      image: "http://www.ventlyfe.com/_pu/0/14786225.jpg",
      description: "\"Love Sosa\" is the second single by rapper Chief Keef from his debut album Finally Rich. It was produced by Young Chop and Dougie. It was composed by Keith Cozart and Tyree Pittman for Chief Keef's first studio album Finally Rich. The song was released as the album's second single on October 18, 2012."

  )
  song4.save

ele2 = Element.new(
        starting_time: "0:00",
        other_times: "",
        source: "Gladiator",
        description: "Preset - PA 60dub JC under Pads",
        song_id: 4

  )
  ele2.save

song5 = Song.new(
      title: "Detroit vs. Everybody",
      artist: "Eminem",
      features: "Royce Da 5'9'', Big Sean, Danny Brown, Dej Loaf, Trick Trick",
      producers: "Statik Selektah",
      album: "Shady XV",
      url: "http://www.youtube.com/watch?v=vjUgJ6Cw5PU",
      image: "http://upload.wikimedia.org/wikipedia/en/9/9c/Shady_Records_-_Shady_XV_(Artwork).jpg",
      description: "\“Detroit Vs Everybody\” is the third single from upcoming Shady Records compilation album, SHADY XV. Featuring several of Detroit’s prominent rappers, each verse tells a different story. Some of the major themes include gratitude for growing up in Detroit, the rough nature of the streets and why people call Detroit home."

  )
  song5.save

samp5 = Sample.new(
        starting_time: "0:12",
        other_times: "",
        artist: "James Brown",
        url: "http://www.youtube.com/watch?v=dNP8tbDMZNE",
        description: "This is one of the most popular drum samples of all time. It appears at 5:35.",
        song_id: 5

  )
  samp5.save

song6 = Song.new(
      title: "i",
      artist: "Kendrick Lamar",
      features: "",
      producers: "Rahki",
      album: "i",
      url: "http://www.youtube.com/watch?v=8aShfolR6w8",
      image: "http://upload.wikimedia.org/wikipedia/en/c/c6/I-by-Kendrick-Lamar.jpg",
      description: "\"i\" is a song by American rapper Kendrick Lamar, released on September 23, 2014, as the lead single from his upcoming yet-to-be-titled third studio album."

  )
  song6.save

samp6 = Sample.new(
        starting_time: "0:47",
        other_times: "",
        artist: "The Isley Brothers",
        url: "http://www.youtube.com/watch?v=q1DDgNCLD84",
        description: "\"i\" heavily samples this Isley Brothers song. [Kendrick personally got the Isley Brothers' blessing to sample their song.](http://www.hotnewhiphop.com/kendrick-lamar-speaks-on-new-single-i-update-full-interview-with-power-106-added-news.12161.html) Rather than simply sample the song, [they re-recorded it with live instruments](http://www.mtv.com/news/1948055/kendrick-lamar-i-producer/)",
        song_id: 6

  )
  samp6.save