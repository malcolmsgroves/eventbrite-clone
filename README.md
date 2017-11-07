# Eventbrite Clone

This is a model skeleton of a web application that enables users to create events and view other events on the site. It is structured on the Odin Project > Ruby On Rails > Associations assignment. The model is the only developed part of this application.

To run, download the files and ```cd``` into the rails directory. Type ```rails server``` into the terminal. The web applicaiton will be live at [localhost:3000/](localhost:3000/).

## Schema
Three tables are used to keep track of users, events, and invitations.

| User          | Column           |
| ------------- |:----------------:|
| username      | String, not null |
| id            | Integer, not null|

| Event          | Column           |
| -------------- |:----------------:|
| id             | Integer, not null|
| name           | String, not null |
| description    | String           |
| location       | String, not null |
| date           | Date, not null   |
| invited_user_id| Integer, not null|


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
