# Driven

This is your fairly standard To-Do List application, but with a twist! All tasks are self-destructing.

Driven will aim to keep to-do lists manageable by automatically deleting to-do items that have not been completed after seven days. The hypothesis is that if the to-do item is not important enough to be completed in seven days, it doesn't belong on your to-do list.

The app is deployed on Heroku: https://driven-app.herokuapp.com


The source code is here on GitHub: https://github.com/hoffyboy/driven

# Features:

  * Custom Authentication system,
  * Custom Authorization system,
  * Automated deletion of expired tasks, thanks to the [Whenever](https://github.com/javan/whenever) gem,
  * Users can update their profile information,
  * Makes you a more organized person!


# Setup and Configuration

  **Languages and Frameworks:** Ruby on Rails and Bootstrap


  **Ruby version:** 2.4.1


  **Databases:** SQLite (Test, Development), PostgreSQL (Production)


  **Development Tools and Gems include:**

  + Devise for user authentication
  + SendGrid for email confirmation

  **To run Wiki-it locally:**
  + Clone the repository
  + Run bundle install
  + Create and migrate the SQLite database with `rake db:create` and `rake db:migrate`
  + Start the server using `rails server`
  + Run the app on `localhost:3000`
