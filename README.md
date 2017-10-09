outerspaces
===========

This is the source code for http://outerspaces.org.nz, using the [Railswiki engine](https://github.com/soundasleep/railswiki/).

# Installing

Follow the instructions for [installing a Railswiki site](https://github.com/soundasleep/railswiki):

```bash
$ vim .env                     # enter in your environment variables
$ rake db:setup db:migrate     # set up databases
$ yarn install                 # install webpacker
$ ruby bin/webpack             # compile scripts with webpack
```

# Deploying

Follow the instructions for [deploying a Railswiki site](https://github.com/soundasleep/railswiki/blob/master/DEPLOY.md):

```bash
$ cap production deploy
```

# TODO

1. Accessible content (screen readers etc)
1. Performance optimisations

## License

This project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

