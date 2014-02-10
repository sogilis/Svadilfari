Svadilfari
==========

This is a small sinatra app including

- [haml](http://haml.info/) as the template engine
- [bower](http://bower.io/) as front end package manager
- [jquery](http://jquery.com)
- [bootstrap](http://getbootstrap.com) ([sass version](https://github.com/twbs/bootstrap-sass))
- [html5shiv](https://github.com/aFarkas/html5shiv)
- [font-awesome](http://fortawesome.github.io/Font-Awesome/)
- [sprockets](https://github.com/sstephenson/sprockets) and [helpers](https://github.com/petebrowne/sprockets-helpers)


Init
----

Clone the project and just execute rake install task :

```bash
rake install
```

This will fetch gem and bower dependencies and reset the git repo.


Heroku ping
-----------

A rake task is available to ping every hour the app.

```bash
heroku config:add PING_URL=http://my-app.herokuapp.com
heroku addons:add scheduler:standard
heroku addons:open scheduler
```

Add `rake dyno_ping` to be run once an hour.

Run
---

``` bash
$ bundle exec guard
$ bundle exec rackup
```

And visit <http://localhost:9292>

ToDo
----

* Write html in haml files under `views`.
* Write server side app in `app.rb`
* Write style under `assets/stylesheets`
* Write amazing javascript under `assets/javascripts`
* Don't forget, use bower to add nice js/css libs and sprockets to load them
