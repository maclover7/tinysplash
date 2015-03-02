![alt tag](https://www.dropbox.com/s/o8paecqn14k1b9h/tinysplash-logo.png?dl=0)

# Tinysplash

Tinysplash is a collection of free tools to help validate a business idea. Using
simple landing pages with "fake doors" and email collection will help tinysplash
users gauge the interest around their product idea while collecting the emails
of potential customers.

>A fake door is a convincing call-to-action that leads to no real feature or
>event. It’s a painless trick to gauge interest before committing any real
>resources.

## Future plans

* Adding simple a/b testing for price point validation
* A paid service to offer rewards to customers for referrals.
* Documentation and tips for running GoogleAds/FB adds

## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

```bash
% ./bin/setup
```

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

After setting up, you can run the application using [foreman]:

```bash
% foreman start
```

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

## Guidelines

Use the following guides for getting things done, programming well, and
programming in style.

* [Protocol](http://github.com/thoughtbot/guides/blob/master/protocol)
* [Best Practices](http://github.com/thoughtbot/guides/blob/master/best-practices)
* [Style](http://github.com/thoughtbot/guides/blob/master/style)

## Deploying

If you have previously run the `./bin/setup` script,
you can deploy to staging and production with:

```bash
$ ./bin/deploy staging
$ ./bin/deploy production
```

## Contributing

We welcome any contribution! We have a [headquarters
boad](https://headquarters.io/tinysplash) to track our project.

**Adding New Feautres**

Please create a new discussion for any feature requests

**Reporting Bugs**

If you feel that you have found a bug, please add it to the bottom of next up
with *BUG* at the beginning of the title.
Please create a new discussion for any feature requests

