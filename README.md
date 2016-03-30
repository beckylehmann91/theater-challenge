# Movie Theater Challenge

## Step 1: Define user stories and requirements

## User stories

Customer:

- Customer can see all movies and their showtimes
- Customer can only buy tickets as long as seats are available
- Customer can buy one ticket at a time
- Customer can checkout with:
  - Name
  - Email
  - Credit card
  - Expiration date
  - All fields must be valid and show errors if invalid
- Customer receives an email receipt after purchase

Owner:

- Owner can add auditoria
- Owner can add seating capacities
- Owner can set which movie is showing in which auditorium
- Owner can view order information from the database
- Owner can view a list of all orders
- Owner can view a list of all orders for each movie

## Notable requirements

- Auditoria have limited seating capacities
- App must be mobile-friendly
- Any CSS framework may be used
- Deploy to Heroku

## Step 2: Design database schema

(insert image of schema)

## Step 3: Create migrations, models, associations

Auditorium:

- has many showings
- has many movies

User:

- has many orders
- has many showings

Order:

- belongs to customer
- belongs to showing

Showing:

- belongs to movie
- belongs to auditorium
- has many orders
- has many customers

Movie:

- has many showings
- has many auditoriums

## Step 4: Write validations

- credit card number must be 16 digits long, only integers allowed
- must have name
- must have valid email
- expy must be after the current date

## Step 5: Set up routes


## Challenge Description:

Customers should be able to come to the site and see all movies playing with their showtimes. Seating is limited for each theater so a particular showtime should only have a limited number of seats. Once a show sells out, a customer should no longer be able to buy tickets. Customers should only be able to buy one ticket at a time so don't worry about a shopping cart for this version.

When customers decide to buy their ticket, they should be able to checkout by entering their name, email, credit card, and expiration date. We want to make sure we don't get any bogus orders, so please keep an eye out for any validations and make sure the user knows if there's a problem with the order. We'll add a credit card processor later on, so you DON’T need to integrate with a credit card processor. Once the customer purchases their tickets, they should receive an email receipt.

The theater owner needs a way to manage the movies playing and seating capacities . She should be able to add auditoriums and seating capacities. In addition, the movies change all the time so our client should be able to set which movie is showing in which auditorium.

The theater owner also wants to keep track of her sales, so the order information should be saved to the database. She wants to see a list of all orders and a list of orders for each movie. We don't need any authentication on the app for now.

We're not worried about custom visual design, so feel free to use any CSS framework, or roll your own. However, we need the site to work on mobile, so keep that in mind.

There are many ways to code this challenge, so we'd like to see your thought processes in the app's Readme file. We're hoping that you can finish the challenge within 7 days. Please push your code to GitHub and deploy the app to Heroku when you're done. You can email me the GitHub and Heroku links.