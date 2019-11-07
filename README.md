# Mineral Exchange

### What problem are you solving by building this partiular marketplace app?
For this assignment I'm designing a web marketplace designed for sellers and collectors of rocks, fossils and minerals. My decision to chose this direction is because I have a close friend (and room-mate) who is an avid collector who needs to release a large majority of their collection. Outside of Ebay and Facebook marketplace there isn't really specialized marketplace options, the websites I have been able to find online are companies selling but don't allow a collector to sell their own collection. These websites also often very clunky and slow from both a functionality and design standpoint. <br>

### Why is this a problem that needs solving? 
This a problem that needs solving because my friends addiction is beginning to take over our household. With no good alternatives out there and eBay not returning the desired results. The Mineral Exchange Marketplace is the best chance I have to get my loungeroom back! 

# Links
- [Deployed site](https://limitless-earth-36988.herokuapp.com/)<br>
- [Github](https://github.com/ChristopherDalziel/mineral-exchange-2.0)

# Description of your marketplace app:
#### Purpose
The purpose of my marketplace app is to design a functional two-way marketplace that is easy to use for anyone with any level of expierence buying and selling online. To allow the sellers an effective way to display their minerals to sell and for potentional buyers to be able browse and purchase from the web-app.

#### Functionality & Features
##### Visitors
 - Can view sign up for a new account as a seller or a buyer via a sign up form that takes information such as name, email, password, address and contact number
 - Can view the websites current listings that are avalible for purchase as well as all listing data and attached questions and answers
 - Visitors can contact the web-app hoster via the email contact form
 - Cannot make a purchase

##### Sellers
 - Can create a listing of their own for sale via a form that takes in information like title, type, description, price and allows for an image upload
 - Have their own custom listings page where they can see all of their own posted listings
 - Can view, edit, or delete their previously created listings
 - Can see if their listing has been sold or is still for sale
 - Can view all avalible liistings on web-app by all sellers not just their own
 - Can view and edit their own personal seller profile that holds their information(Incase their contact or address changes etc)
 - Can answer and delete buyer questions on their own listings
 - Cannot make a purchase 
 - Sellers can contact the web-app hoster via the email contact form

##### Buyers
 - Can view all current listings on the website 
 - Buyers can chose to purchase a listing, upon selecting a purchase they will be re-directed to [stripe](www.stripe.com) to complete their payment before been re-directed back to the web-app to confirm. 
 - Buyers can ask sellers questions about their listings
 - Buyers can contact the web-app hoster via the email contact form

##### General
- Custom form inputs for contact, user sign ups and listing creation and editing
- Upon a listing been purchase the listing will be removed from the web-app ready for the seller to delete if they chose
- [AWS](www.https://aws.amazon.com/) Image hosting
- [Stripe](www.stripe.com) payment system
- [Formspree](https://formspree.io/) Email forwarding


#### Sitemap
#### Screenshots
#### Target audience
My target audience for this web marketplace is primarly collects, sellers and buyers of different types of rocks, fossils and minerals. 

#### Tech stack 
- Ruby on Rails
- Ruby 2.5.1
- PostgreSQL
- Heroku (Deloyment)
- macOS

##### Third Party Services
- [Stripe](www.stripe.com) (Payment handling)
- [AWS](www.https://aws.amazon.com/) (Image hosting)
- [Formspree](https://formspree.io/) (Email forwarding)
- [Heroku](www.heroku.com/) (Deployment)

##### Gems
- Devise (For handling user sign ups)

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
One of the high-level components in my application is Active-Record. Active-Record is a design pattern that uses the MVC (Model, View, Controller) to map the columns inside your table. Doing this provides us with ORM (Object Relational Mapping). <br>
Doing this allows us to access our SQL database (In our case PostgreSQL) without having to write SQL statements. <br>
Active-Record also allows us the ability to represent our models and their data, assosiations between our models, represent inheritance through related models and validate models before they get persisted to the database. These columns are accessed by methods are inffered inside the database schema.

## Detail any third party services that your app will use:
The Mineral Exchange app will use [Stripe](www.stripe.com) to handle payment systems, [AWS](www.https://aws.amazon.com) to handle image uploading and hosting, [Formspree](https://formspree.io/) is been used to handle the contact form for all users to use to contact whoever is controling the web-app, and [Heroku](www.heroku.com/) to deploy.

## Describe your projects models in terms of the relationships (active record associations) they have with each other:
The web-app 

has_many
has_one
through
depedent deletions

## Discuss the database relations to be implemented in your application:
erd
-
migrations
f-keys
tables erd

## Provide your database schema design:
explain the third time 
![Schema.rb File Screen shots](app/assets/images/md_images/schema_1.png)
![Schema.rb File Screen shots](app/assets/images/md_images/schema_2.png)
![Schema.rb File Screen shots](app/assets/images/md_images/schema_3.png)

## Describe the way tasks are allocated and tracked in your project:
![]()

*Going to add trello screen shots here