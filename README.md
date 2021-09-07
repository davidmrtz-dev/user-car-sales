# Used Car Sales Inventory :rocket:

## How to run locally

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Then, make many moc data to interaction:

```
$ rails db:seed
```

Finally, run the test suite to verify that everything is working correctly:

```
$ bundle exec rspec
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Go to localhost:3000

There are 2 types of users,

to login as admin user email: 'user@example.com' password: 'password'
to login as user email: 'user2@example.com' password: 'password'
