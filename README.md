Dashing: Sweet Dashboard Project
=================================

[Dashing](http://dashing.io/) is a Sinatra-based framework for building (generally read-only) dashboards especially suitable for continuous, large-screen display. [Sample demo](http://dashingdemo.herokuapp.com/sample).  [Larger demo](http://dashingdemo.herokuapp.com/sampletv).

[Sinatra] (http://www.sinatrarb.com/) is a [DSL](http://en.wikipedia.org/wiki/Domain-specific_language) for building [Ruby](https://www.ruby-lang.org/en/) web apps. 

Both Sinatra and another popular framework, [Rails](http://rubyonrails.org/), use the [Rack](http://rack.github.io/) library.


Initial Demo
-------------
http://sweet-dashboard-project.herokuapp.com/


Getting started
----------------

Clear the schedule.  :)

Get an account on [Heroku](http://www.heroku.com) and install [Heroku Toolbelt](https://toolbelt.heroku.com/). 

Set up Ruby, Ruby devkit, and Dashing on Windows as described at "Install Dashing dashboard on Windows" at http://3man.co.za/?p=6.

Install Rails Installer from http://railsinstaller.org/en.

This example was helpful: http://www.sitepoint.com/get-started-with-sinatra-on-heroku/.

See Heroku suggestions in various places, including: https://github.com/bassdread/debonair and https://github.com/Shopify/dashing/issues/304.hre

Setting ENV environment settings such as ENV['consumer_key'] can be done with commands:

     heroku config:add consumer_key=abcdefghijklmnopqrstuvwxyz
     
Or by using [yaml](http://www.yaml.org/) files.  If so, the actual credentials.yaml is added to .gitignore, but an [example](https://github.com/blackmad/zetashapes/blob/master/testsite/app/config/credentials.yml.example) with a ".example" extension may be included.

Running on Heroku
---------------

Open a git bash window. Commit changes and push:

    git commit -a -m "commit msg here"
    git push heroku master

Running locally
---------------

Open command window in the sweet_dashboard_project folder and type:

     dashing start

Point browser at: http://localhost:3030/initial

Or view the basic sample at: http://localhost:3030/sample

Or view the bigger sample at: http://localhost:3030/sampletv


Finding dashing widgets
-----------------------

Dashing widget challenge: http://dashing.challengepost.com/submissions.

Additional widgets: https://github.com/Shopify/dashing/wiki/Additional-Widgets.


Customizing
-----------

Added the weather widget as shown at: https://gist.github.com/wesee/6362854.

Added a live stock feed widget as shown at: https://gist.github.com/wesee/6363509.

Added a GIS-based widget as shown at: https://gist.github.com/sjernigan/d51313bfa7236c1733f0.

Added a Twitter search widget as shown at: https://gist.github.com/jeroenbegyn/5419267.

Set up Twitter authorization fields to read from environment variables as shown at: https://raw.githubusercontent.com/mroth/pigstream/master/pig.rb.

Fixed SSL error as shown at: https://gist.github.com/fnichol/867550.

     gem install twitter
     bundle install
     dashing start


 
 