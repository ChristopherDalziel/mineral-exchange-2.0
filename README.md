# Mineral Exchange

### What problem are you solving by building this partiular marketplace app?
For this assignment I'm designing a web marketplace designed for sellers and collectors of rocks, fossils and minerals. My decision to chose this direction is because I have a close friend who is an avid collector who needs to release a large majority of their collection. Outside of Ebay and Facebook marketplace there isn't really specialized marketplace options, the websites I have been able to find online are companies selling but don't allow a collector to sell their own collection. These websites also often very clunky and slow using inefficent image files with very basic design. <br>

### Why is this a problem that needs solving? 
Rock sellers / collectors need JUSTICE

### Links
- [Deployed site](https://limitless-earth-36988.herokuapp.com/)<br>
- [Github](https://github.com/ChristopherDalziel/mineral-exchange-2.0)


### Description of your marketplace app (website), including:
- Purpose
- Functionality / features
- Sitemap
- Screenshots
- Target audience
- Tech stack (e.g. html, css, deployment platform, etc)
Tech Stack: HTML5, CSS, Heroku, Swipe, AWS.

# Epic/Stories
![Epic with Stories](/app/assets/images/md_images/Stories.jpeg)

# Wireframes

### Homepage
![Homepage Wireframe](/app/assets/images/md_images/home_page.png)
### Sign up page
![Sign up Wireframe](/app/assets/images/md_images/sign_up_page.png)
### Listings page(Buyer)
![Listings Buyer Wireframe](/app/assets/images/md_images/listings_page.png)
### Listings page(Seller)
![Listings Seller Wireframe](app/assets/images/md_images/listings_page_seller.png)
### Listings create
![Create Listing Wireframe](/app/assets/images/md_images/listing_create_page.png)
### Listings show
![Listing show Wireframe](/app/assets/images/md_images/listing_show.png)
### Purchase success
![Purchase success Wireframe](/app/assets/images/md_images/purchase_success_page.png)
### Purchase fail
![Purchase fail Wireframe](/app/assets/images/md_images/purchase_fail_page.png)
### Contact Us
![Contact us form Wireframe](app/assets/images/md_images/contact_page.png)
### Example Mobile Page Views
![Example Mobile Page Views](/app/assets/images/md_images/example_mobile_page_views.png)

# ERD
![ERD Chart](/app/assets/images/md_images/T2A2-ERD.png)

## Explain the different high-level components (abstractions) in your app:
One of the high-level components in my application is Active-Record. Active-Record is a Ruby libary working with an SQL database (In our case PostgreSQL) and is also the "M" within the "MVC" design pattern (Model, View, Controller).<br>
Active-Record works with ORM ()

## Detail any third party services that your app will use:
The Mineral Exchange app will use [Stripe](www.stripe.com) to handle payment systems and [AWS](www.https://aws.amazon.com) to handle image uploading and hosting. 

## Describe your projects models in terms of the relationships (active record associations) they have with each other:

## Discuss the database relations to be implemented in your application:

## Provide your database schema design:
![Schema.rb File Screen shots](app/assets/images/md_images/schema_1.png)
![Schema.rb File Screen shots](app/assets/images/md_images/schema_2.png)
![Schema.rb File Screen shots](app/assets/images/md_images/schema_3.png)

## Describe the way tasks are allocated and tracked in your project:

#### Ruby version
- Ruby 2.5.1
- Ruby on Rails
- PostgreSQL

#### Gems:
- devise

#### Third party services:
- [Stripe](www.stripe.com)
- [AWS](www.https://aws.amazon.com/)

#### System dependencies
- macOS

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

rails db:reset
rails db:migrate
git push heroku master