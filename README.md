# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* 

# My application will be developed with the following schema.

##**Blog Table**

-t.string :Title
-t.text :Content


##**Users Table**

-t.string :Name
-t.string :Email
-t.string :Encrypted_password
-t.string :Password_digest


##*Categories Table**

-t.string :Windows
-t.string :Mac
-t.string :Linux
-t.string :Android
-t.string :Iphone
-t.string :Hardware
-t.string :Software
-t.text :Name
-t.text :Content
-t.integer :user_id
-t.integer :blog_id


##*Label*

-References :blog_id 
-References :user_id 

