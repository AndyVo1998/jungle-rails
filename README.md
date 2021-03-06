# Jungle

A mini e-commerce application built with Rails 4.2. This project involved working with inherited code, fixing bugs, and implementing smaller features.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server
10. Visit http://localhost:3000/ in your browser

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

##Screenshots
![Admin Categories Page](hhttps://github.com/AndyVo1998/jungle-rails/blob/master/docs/AdminCategoriesPage.png)
![Admin New Category Page](https://github.com/AndyVo1998/jungle-rails/blob/master/docs/AdminNewCategoryPage.png)
![Cart Page](https://github.com/AndyVo1998/jungle-rails/blob/master/docs/CartPage.png)
![Empty Cart Page](https://github.com/AndyVo1998/jungle-rails/blob/master/docs/EmptyCartPage.png)
![Order Page](https://github.com/AndyVo1998/jungle-rails/blob/master/docs/OrderPage.png)
![Product Page](https://github.com/AndyVo1998/jungle-rails/blob/master/docs/ProductPage.png)