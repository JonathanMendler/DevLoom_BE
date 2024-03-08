# DevLoom
Welcome to the backend of DevLoom, a blogging platform built upon Ruby on Rails! This README will guide you through the setup process and provide an overview of the application's features.

##Setup
1. **Clone the repository**
   ```
   git clone https://github.com/JonathanMendler/DevLoom_BE.git
   cd DevLoom_BE
   ```
2. **Install dependencies**
   ```
   bundle install
   ```
3. **Database setup**
   ```
   rails db:create
   rails db:migrate
   ```
4. **Start the server**
   ```
   rails server
   ```

Devloom should now be running at 'http://localhost:3000'.

##Features

- **User Authentication:** Allows users to sign up, log in, and log out securely. Utilizes [Devise](https://github.com/heartcombo/devise) for authentication.
* **Blog Management:** Users can create, read, update, and delete blog posts. Posts can be organized by categories and tagged for easy navigation.
+ **Commenting System** Enables users to leave comments on blog posts. Comments can be moderated by administrators.
- **Category Management:** Administrators can create and manage categories to organize blog posts effectively.
* **Authorization:** Implements role-based authorization to control access to certain parts of the application. Utilizes [CanCanCan](https://github.com/CanCanCommunity/cancancan) for authorization.
+ **API Support:** Optionally provides a RESTful API for interacting with the blog application programmatically.

##Testing

- **Unit Tests:** Run `rails test` to execute unit tests for models.
* **Controller Tests:** Run `rails test:controllers` to execute controller tests.
+ **Integration Tests:** Run `rails test:integration` to execute integration tests.

##Acknowledgments
- Special thanks to the Ruby on Rails community for their indispensable insight and support

##Contact
jon.mendler@gmail.com
