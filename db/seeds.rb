User.destroy_all
Astro.destroy_all
Lunar.destroy_all
Restaurant.destroy_all

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
a11= Astro.create(:sign => "Scorpio", :about => "I'm a scorpion")
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

u1 = User.create(:email => 'cap', :password => "cap", :password_confirmation => "cap", :is_admin => true, :firstname => "cap", :lastname => "cap", :gender => "Male", :preference => "Male", :birthday => "1989-01-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u2 = User.create(:email => 'aqu', :password => "aqu", :password_confirmation => "aqu", :is_admin => true, :firstname => "aqu", :lastname => "aqu", :gender => "Male", :preference => "Male", :birthday => "1990-02-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u3 = User.create(:email => 'pis', :password => "pis", :password_confirmation => "pis", :is_admin => true, :firstname => "pis", :lastname => "pis", :gender => "Male", :preference => "Male", :birthday => "1991-03-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u4 = User.create(:email => 'ari', :password => "ari", :password_confirmation => "ari", :is_admin => true, :firstname => "ari", :lastname => "ari", :gender => "Male", :preference => "Male", :birthday => "1992-04-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u5 = User.create(:email => 'tau', :password => "tau", :password_confirmation => "tau", :is_admin => true, :firstname => "tau", :lastname => "tau", :gender => "Male", :preference => "Male", :birthday => "1993-05-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u6 = User.create(:email => 'gem', :password => "gem", :password_confirmation => "gem", :is_admin => true, :firstname => "gem", :lastname => "gem", :gender => "Male", :preference => "Male", :birthday => "1994-06-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u7 = User.create(:email => 'can', :password => "can", :password_confirmation => "can", :is_admin => true, :firstname => "can", :lastname => "can", :gender => "Male", :preference => "Male", :birthday => "1995-07-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u8 = User.create(:email => 'leo', :password => "leo", :password_confirmation => "leo", :is_admin => true, :firstname => "leo", :lastname => "leo", :gender => "Male", :preference => "Male", :birthday => "1996-08-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u9 = User.create(:email => 'vir', :password => "vir", :password_confirmation => "vir", :is_admin => true, :firstname => "vir", :lastname => "vir", :gender => "Male", :preference => "Male", :birthday => "1997-09-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u10 = User.create(:email => 'lib', :password => "lib", :password_confirmation => "lib", :is_admin => true, :firstname => "lib", :lastname => "lib", :gender => "Male", :preference => "Male", :birthday => "1998-10-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u11 = User.create(:email => 'sco', :password => "sco", :password_confirmation => "sco", :is_admin => true, :firstname => "sco", :lastname => "sco", :gender => "Male", :preference => "Male", :birthday => "1999-11-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")
u12 = User.create(:email => 'sag', :password => "sag", :password_confirmation => "sag", :is_admin => true, :firstname => "sag", :lastname => "sag", :gender => "Male", :preference => "Male", :birthday => "2000-12-01", :suburb => "Sydney", :cuisines => "French", :hobbies => "Dancing", :about => "Hello")

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
