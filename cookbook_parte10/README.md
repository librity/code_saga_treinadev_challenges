# Troubleshooting

If `bundle install` errors out, isntall the version of bundler specified in
Gemfile.lock:
```bash
$ gem install bundler -v 1.16.3
```

If it hangs while installing libv8, try:
```bash
$ bundle update mini_racer
```

If it errors out when runnig `rspec`, run it within the context of the Gemfile:
```bash
$ bundle exec rspec
```
In fact, you should probably run every rails command this ways:
```bash
$ bundle exec rails db:migrate
$ bundle exec rails s
$ bundle exec rails c
$ bundle exec rails g resource tests attr:string
```

