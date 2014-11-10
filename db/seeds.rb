# creating test users
user1 = User.create(email: "admin@yopeso.com", password: "123456789", role: "admin")
user2 = User.create(email: "user@yopeso.com", password: "123456789", role: "moderator")
# creating test authors
@author1 = Author.create_from_name("George R. Martin")
@author2 = Author.create_from_name("Bram Stoker")
# creating test books

Book.create(
title: "A Game of Thrones",
year: 1995,
user: user1,
author: @author1,
)
Book.create(
title: "Dracula",
year: 1900,
user: user2,
author: @author2,
)
