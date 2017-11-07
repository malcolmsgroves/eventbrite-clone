# Eventbrite Clone

This is a model skeleton of a web application that enables users to create events and view other events on the site. It is structured on the Odin Project > Ruby On Rails > Associations assignment. The model is the only developed part of this application.

To run, download the files and ```cd``` into the rails directory. Enter ```rails db:migrate``` into the terminal to migrate the database and ```rails db:seed``` to seed the database. To run the applicaiton, type ```rails server``` into the terminal. The web application will be live at http://localhost:3000/.

## Schema
Three tables are used to keep track of users, events, and invitations.

| User          | Column           |
| ------------- |:----------------:|
| username      | String, not null |
| id            | Integer, not null|
| created_at    | datetime         |
| updated_at    | datetime         |

| Event          | Column           |
| -------------- |:----------------:|
| id             | Integer, not null|
| name           | String, not null |
| description    | String           |
| location       | String, not null |
| date           | Date, not null   |
| invited_user_id| Integer, not null, foreign key|
| created_at     | datetime         |
| updated_at     | datetime         |

| Invitation     | Column           |
| -------------- |:----------------:|
| id             | Integer, not null|
| event_id       | Integer, not null, reference|
| user_id        | Integer, reference|
| attending      | Boolean          |
| created_at     | datetime         |
| updated_at     | datetime         |


## Seed
The database is seeded with random users, events, and invitations generated with the Faker gem. To avoid seeding, do not enter the terminal command ```rails db:seed```. To reset database and remove seeds, type ```rails db:migrate:reset```.
