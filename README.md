Chitter Challenge
=================

Approach
-------

My initial aim was to create a fully functional & responsive app.  
I started by implementing the basic logic, so as to achieve an MVP as soon as possible.  
I then switch to focus on the front end, adding basic styling.
After, I then returned to the application logic, adding features such as tagging & replying to peeps.

It is mostly complete, though still requires work on the following:

* Flash notices & welcome/goodbye messages (they're currently hidden)
* Tests can be tidied up and refactored quite a bit
* controllers & partials can be extracted out into separate files
* Make the design responsive
* Email logic was spiked and not test driven

Desired features that I didn't get round to:

* Click-through a user's handle to see their peeps.

Usage
-----
visit `https://fast-gorge-43523.herokuapp.com`

Test
-----
```
bundle install
rspec
```
Technologies
-------

* HTML & CSS for the front end
* Ruby & Sinatra for the back end
* PostgreSQL for the database
* Heroku for hosting
* RSpec & Capybara for testing
* Gmail Ruby gem used for emailing

Authors
------
[Ainsley Chang](https://github.com/ainsleybc)
