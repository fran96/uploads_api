# Upload API

Allows you to upload files/images from a client (postman) to the server. 

## Getting Started

To get started run the below commands in the uploads_api directory:

* bundle install
* rails server
* rdoc

### RDOC

* To view code documentation, navigate to uploads_api/doc/index.html and open it in the browser by right clicking on it and selecting open in browser. The doc folder should look similar to [this](docs/rdoc.jpg)
* Navigate to the "Classes and Modules" to see further comments about specific methods.


### Examine DB contents

To examine the DB contents:
* In the terminal cd to uploads-api and run 'rails c'
* Type User.all, or Upload.all to see all the users and uploads

### Prerequisites

1. Ruby 2.6.3
2. Download postman
3. Download [this collection](docs/upload-api.postman_collection.json) and import it in Postman to run the API calls. Then follow the steps below:

* First you need to run the SignUp call in postman in order to create a user
* Then you can run the SignIn call and once done, take the authorization token from the Headers (under 'authorization' : Bearer ...)
* To run the other calls, you must paste that token in the Headers of each call
* Repeat the 2nd and 3rd steps every 15 minutes, as the token will expire. 

### Steps to upload, view, download and delete files

* To upload a file, use the UploadFiles call, and upload a file from your PC using the postman client as seen here: [1.Uploading a file](docs/uploading_a_file.jpg) and here [2.Uploading a file](docs/uploading_an_image.jpg). Make sure to name the file using the right extension.
* You may preview an image file as seen here: [Previewing an image](docs/previewing_image_file.jpg)
* To download a pdf file, simply run the UploadFiles call and you will be prompted to save your file somewhere locally, as seen here: [Download a file](docs/download_a_pdf.jpg)
* To delete a file, run the DeleteFile call, and enter the upload ID of the file you wish to delete. You will receive a response saying your file has been deleted, as seen here: [Deleting a file](docs/deleting_a_file.jpg)

## Running the integration tests

rails test test/controllers/uploads_controller_test.rb

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Devise](https://github.com/plataformatec/devise) - For authentication
* [DeviseJWT](https://github.com/waiting-for-dev/devise-jwt) - For authentication

## Authors

* **Francesca Micallef** - *Initial work* - [FrancescaMicallef](https://github.com/fran96)


