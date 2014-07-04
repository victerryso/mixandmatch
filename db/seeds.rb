User.destroy_all
Astro.destroy_all
Lunar.destroy_all
Chat.destroy_all
Message.destroy_all

a1 = Astro.create(:sign => "Capricorn", :about => "I'm a goat")
a2 = Astro.create(:sign => "Aquarius", :about => "I'm water")
a3 = Astro.create(:sign => "Pisces", :about => "I'm a fish")
a4 = Astro.create(:sign => "Aries", :about => "I'm a sheep")
a5 = Astro.create(:sign => "Taurus", :about => "I'm a bull")
a6 = Astro.create(:sign => "Gemini", :about => "I'm twins")
a7 = Astro.create(:sign => "Cancer", :about => "I'm a crab")
a8 = Astro.create(:sign => "Leo", :about => "I'm a lion, rawr!")
a9 = Astro.create(:sign => "Virgo", :about => "I'm a virgin")
a10 = Astro.create(:sign => "Libra", :about => "I'm scales")
a11 = Astro.create(:sign => "Scorpio", :about => "I'm a scorpion")
a12 = Astro.create(:sign => "Sagittarius", :about => "I'm a centaur")

Lunar.create(:animal => "Rat", :about => "I'm a rat")
Lunar.create(:animal => "Ox", :about => "I'm an ox")
Lunar.create(:animal => "Tiger", :about => "I'm a tiger")
Lunar.create(:animal => "Rabbit", :about => "I'm a rabbit")
Lunar.create(:animal => "Dragon", :about => "I'm a dragon, rawr!")
Lunar.create(:animal => "Snake", :about => "I'm a snake, hiss")
Lunar.create(:animal => "Horse", :about => "I'm a horse")
Lunar.create(:animal => "Sheep", :about => "I'm a sheep, baa!")
Lunar.create(:animal => "Monkey", :about => "I'm a monkey")
Lunar.create(:animal => "Rooster", :about => "I'm a rooster")
Lunar.create(:animal => "Dog", :about => "I'm a dog, woof!")
Lunar.create(:animal => "Pig", :about => "I'm a pig, oink!")

u1 = User.create(:email => 'cap@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Andy", :lastname => "Apple", :gender => "Male", :preference => "Female", :birthday => "1989-01-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Prancing", :about => "I like long walks on the beach", :image => "http://i.imgur.com/2SE6kNC.jpg")
u2 = User.create(:email => 'aqu@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Will", :lastname => "Banana", :gender => "Male", :preference => "Female", :birthday => "1990-02-01", :suburb => "Wooloomooloo", :cuisines => "Italian", :hobbies => "Dancing", :about => "I like cheese", :image => "http://i.imgur.com/vp0wIuY.jpg")
u3 = User.create(:email => 'pis@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Ron", :lastname => "Cabbage", :gender => "Male", :preference => "Female", :birthday => "1991-03-01", :suburb => "Darlinghurst", :cuisines => "Spanish", :hobbies => "Surfing", :about => "I smell like pudding", :image => "http://i.imgur.com/6RwCgrJ.jpg")
u4 = User.create(:email => 'ari@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Jase", :lastname => "Doggy", :gender => "Male", :preference => "Female", :birthday => "1992-04-01", :suburb => "Newtown", :cuisines => "Indian", :hobbies => "Swimming", :about => "I'm hungry", :image => "http://i.imgur.com/6Vpp5S1.jpg")
u5 = User.create(:email => 'tau@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Dan", :lastname => "Elephant", :gender => "Male", :preference => "Female", :birthday => "1993-05-01", :suburb => "Balmain", :cuisines => "American", :hobbies => "Eating", :about => "I like pugs", :image => "http://i.imgur.com/pjaEXn5.jpg")
u6 = User.create(:email => 'gem@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Tom", :lastname => "Fudge", :gender => "Male", :preference => "Female", :birthday => "1994-06-01", :suburb => "Drummoyne", :cuisines => "Tapas", :hobbies => "Skating", :about => "I enjoy the company of hobos", :image => "http://i.imgur.com/z824MX2.jpg")
u7 = User.create(:email => 'can@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Lis", :lastname => "Google", :gender => "Female", :preference => "Male", :birthday => "1995-07-01", :suburb => "Haberfield", :cuisines => "Dutch", :hobbies => "Jogging", :about => "Work work...", :image => "http://i.imgur.com/A0WIuGq.jpg")
u8 = User.create(:email => 'leo@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Julz", :lastname => "Hippo", :gender => "Female", :preference => "Male", :birthday => "1996-08-01", :suburb => "Five Dock", :cuisines => "Chinese", :hobbies => "Shooting", :about => "Just a small town girl", :image => "http://i.imgur.com/UaQYFH8.jpg")
u9 = User.create(:email => 'vir@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Mel", :lastname => "Ippudo", :gender => "Female", :preference => "Male", :birthday => "1997-09-01", :suburb => "Potts Point", :cuisines => "Japanese", :hobbies => "Cooking", :about => "Bazinga!", :image => "http://i.imgur.com/Jazw3Jr.jpg")
u10 = User.create(:email => 'lib@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Ann", :lastname => "Jiggly", :gender => "Female", :preference => "Male", :birthday => "1998-10-01", :suburb => "Kings Cross", :cuisines => "Thai", :hobbies => "Smelling", :about => "Holla Back Girl", :image => "http://i.imgur.com/y3Cf9ix.jpg")
u11 = User.create(:email => 'sco@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Jess", :lastname => "Krypt", :gender => "Female", :preference => "Male", :birthday => "1999-11-01", :suburb => "Surry Hills", :cuisines => "Steak", :hobbies => "Baking", :about => "Pizzaah!", :image => "http://i.imgur.com/Wfi038a.jpg")
u12 = User.create(:email => 'sag@mm.com', :password => "mm", :password_confirmation => "mm", :is_admin => true, :firstname => "Elle", :lastname => "Lance", :gender => "Female", :preference => "Male", :birthday => "2000-12-01", :suburb => "Kensington", :cuisines => "Cafe", :hobbies => "Running", :about => "Have my babies!", :image => "http://i.imgur.com/wBif6v5.jpg")

a1.users << u1
a2.users << u2
a3.users << u3
a4.users << u4
a5.users << u5
a6.users << u6
a7.users << u7
a8.users << u8
a9.users << u9
a10.users << u10
a11.users << u11
a12.users << u12
