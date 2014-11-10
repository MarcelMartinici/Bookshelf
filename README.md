# **Yopeso Bookshelf Project**

A Ruby based app that will help you organize your Library of books.

### Features

The Bookshelf app is dedicated to store book collections and authors.

On the ``/book`` page you can see All listed books. You can add new books by clicking "Add book" button.

Authors and Cathegories are created through book creation. Multiply cathegories should be separated by a comma.

After creating the book you are redirected to the book "Show" page, Where you can overview and set a rate for the created book.

After creating your book, you obtain the ability to edit your book by pressing the edit button.

Also the book stores the user that added it to the library. You can also access the user list and their publications by the button in the top menu.

Use "Sign up" button to register a user and the "Sign in" button to login.

The ``Search`` field is able to search through authors and book titles.

### What gems were used for the making of this app:

1. Implemented authentication using Devise (https://github.com/plataformatec/devise).

2. Implemented the authorization functionality (added roles and permissions) using CanCan (https://github.com/ryanb/cancan)

3. Implemented a simple search functionality (using SQL ILIKE).

4. Implemented file upload functionality, add the possibility to upload book cover image using paperclip (https://github.com/thoughtbot/paperclip)

5. Implemented the rating system. That means the possibility to rate a book, view the book ratings using ratyrate (https://github.com/wazery/ratyrate)

## To do
1. Use Rspec for views, models, controllers, routes
2. Test the app

## Instructions

### Clone repository 

```git
clone https://github.com/MarcelMartinici/Bookshelf
```

```cd bookshelf```

### Change database.yml

locate and change with your editor of choice /config/database.yml

The field that you have to change are: 

```adapter: postgresql```        #choose your database adapter

```username: USER_NAME```        #place your database username

```# password: YOUR_PASSWORD```   #uncomment and place password for secured databases

#####Note: the default database for this app is postgresql

### DataBase initialization

For initialization of your database you have to run:

```rake db:create```

### Database Migration

Run the migrations:
```
rake db:migrate
```

### Seed in your database(optional)

To flood your DB with test objects run: 

```
rake db:seed
```

####After running the last command you will have 2 users: 1 admin and 1 user or how i called it in the database: moderator: 

test_admin@yopeso.com and test_user@yopeso.com both with password 123456789

Use them to test out the User rights system. Create and administrate your library and see how this is beneficial for you.