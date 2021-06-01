![](https://img.shields.io/badge/Microverse-blueviolet)

# Members Only (Rails Authentication)
[Solo Project]

>  In this Rails Association project involves building an You want to build a site similar to a private Eventbrite which allows users to create events and then manage user signups. A user can create events. A user can attend many events. An event can be attended by many users.

This project demonstrates my understanding of ActiveRecord Association and Queries. The project has three models: user, event and event_attendee. I have used the belongs_to and has_many association to show that an event belongs to a user and a user has many events. I also used methods like through to make assocation between user and event through the event_attendees table.


## Built With

- Ruby 2.7.0

- Ruby on Rails 6.1.1

- Devise gem

- RuboCop

- Bootstrap and Bulma

- Rspec and Capybara


## Prerequisites
Install [Ruby](https://www.theodinproject.com/courses/ruby-programming/lessons/installing-ruby-ruby-programming), [Rails](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/your-first-rails-application-ruby-on-rails), sqlite3, text editior, browser, git


## Getting Started

- To get a local copy of this project, run
`git clone https://github.com/francisuloko/private-events.git`

- Change into the project directory, run
`cd private-events`

- Install gems and dependencies, run
`bundle install`

- To set up your database, run
`/bin/rails db:migrate`

- To start the app in your browser, run
`/bin/rails server`

- To Explore the project in your browser, visit
`http://localhost:3000`

- To close the server, run
`Ctrl C`

- To interact with the app and models from console, run
`/bin/rails console`

- To run the tests, run
`bundle exec rspec`


## Author

👤 **Francis Uloko**

[Github](https://github.com/francisuloko)
[Twitter](https://twitter.com/francisuloko)
[LinkedIn](https://linkedin.com/in/francisuloko)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/francisuloko/private-events/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](https://en.wikipedia.org/wiki/MIT_License) licensed.
