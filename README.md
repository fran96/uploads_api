# Upload API

Allows you to upload files/images from a client (postman) to the server. 

## Getting Started

rake db:create
rake db:migrate
rails server

To examine the DB contents:
* In the terminal cd to uploads-api and run 'rails c'
* Type User.all, or Upload.all to see all the users and uploads

### Prerequisites

Download postman and use this collection to run the API calls:

The authorization token will expire every 15 minutes, so you need to copy the Bearer token under 'authorization' in the headers section of the SignUp call,
and add the new token to each call you make (replace it in the Headers field)

## Running the integration tests

rails test test/controllers/uploads_controller_test.rb

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Devise](https://github.com/plataformatec/devise) - For authentication
* [DeviseJWT](https://github.com/waiting-for-dev/devise-jwt) - For authentication

## Authors

* **Francesca Micallef** - *Initial work* - [FrancescaMicallef](https://github.com/fran96)


