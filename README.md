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

- Owner can add auditoriums
- Owner can add seating capacities
- Owner can set which movie is showing in which auditorium
- Owner can view order information from the database
- Owner can view a list of all orders
- Owner can view a list of all orders for each movie

## Notable requirements

- Auditoriums have limited seating capacities
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