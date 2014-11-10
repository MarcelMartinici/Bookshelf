# creating test users

user1 = User.create(email: "admin@yopeso.com", 
                    password: "123456789", 
                    role: "admin")
user2 = User.create(email: "user@yopeso.com", 
                    password: "123456789", 
                    role: "moderator")

# creating test authors

@author1 = Author.create_author_name("George R. Martin")
@author2 = Author.create_author_name("Bram Stoker")

# creating test books

Book.create(
title: "A Game of Thrones",
year: 1995,
author: @author1,
cathegory:Cathegory.create_cathegory("action, fantasy, epic")
)

Book.create(
title: "Dracula",
year: 1900,
author: @author2,
cathegory:Cathegory.create_cathegory("action, fantasy, horror")
)

Book.create(
title: "A Clash of Kings",
year: 1998,
author: @author2,
cathegory:Cathegory.create_cathegory("action, fantasy, epic")
)
