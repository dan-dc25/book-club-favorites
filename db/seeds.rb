Book.destroy_all
User.destroy_all
#Users
marc = User.create(username: "mrusso", email: "mrusso@test.com", password: "password")
sandi = User.create(username: "Sandi", email: "sandi@test.com", password: "password")
sam = User.create(username: "sambomb", email: "sambomb@me.com", password: "password")

# Marc's books
leadershift = Book.create(name: "Leadershift", author: "John Maxwell", genre: "self-development", user: marc)
you_are_a_badass = Book.create(name: "You are a Badass",author: "Jon Sincero", genre: "self development", user: marc)
the_book_thief = Book.create(name: "The Book Thief", author: "Markus Zusak", genre: "novel", user: marc)
the_secret = Book.create(name: "The Secret", author: "Rhonda Byrne", genre: "self-development", user: marc)

# Sanid's books
running_with_scissors = Book.create(name: "Running with Scissors", author: "Augusten Burroughs", genre: "memoir", user: sandi)
the_happiness_advantage = Book.create(name: "The Happiness Advantage", author: "Shawn Achor", genre: "self-development", user: sandi)
love_simon = Book.create(name: "Love Simon", author: "Becky Albertalli", genre: "novel", user: sandi)
the_sault_in_our_stars = Book.create(name: "The Fault in Our Stars", author: "John Green", genre: "adult fiction", user: sandi)

# Sam's books
naked = Book.create(name: "Naked", author: "David Sedaris", genre: "memoir", user: sam)
its_kind_of_a_funny_story = Book.create(name: "It's Kind of a Funny Story", author: "Ned Vizzini", genre: "comedy", user: sam)
harry_potter_and_the_goblet_of_fire = Book.create(name: "Harry Potter and The Goblet of Fire", author: "J. K. Rowling", genre: "fiction", user: sam)
harry_potter_and_the_sorcerers_stone = book.create(name: "Harry Potter and The Sorceres Stone", author: "J. K. Rowling", genre: "fiction", user: sam)
harry_potter_and_the_deathly_hallows = Book.create(name: "Harry Potter and The Deathly Hallows", author: "J. K. Rowling", genre: "fiction", user: sam)
