# Welp API mock

This is a simple mock API around Yelp Fusion V3.

## Supported API endpoints

**Autocomplete**

Path: */autocomplete*

Documentation: https://www.yelp.com/developers/documentation/v3/autocomplete

**Search**

Path: */businesses/search*

Documentation: https://www.yelp.com/developers/documentation/v3/business_search

**Business details**

Path: */businesses/:id*

Documentation: https://www.yelp.com/developers/documentation/v3/business

## Authentication

Follows the standard Fusion V3 authentication scheme with passing auth token in the `Authorization` header.

For more info, please refer to https://www.yelp.com/developers/documentation/v3/authentication

## Running it

The stack is built using **Sinatra/Sinatra::Reloader**, **Thin**, **Bundler** and **Zeitwerk**.

Running in development environment is quite straightforward:

1. Clone the repository and `cd` into it -> ideally within a RVM or rbenv environment
2. Run `bundle install`
3. Run `bundle exec rackup`
4. The API endpoints are now available from `http://127.0.0.1:9292`

Note that in order to access the API you must pass the auth token in headers, the token value is in the `MOCK_AUTH_TOKEN` constant (cf. app.rb)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/FranckyU/welp-api-mock. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/welp-api-mock/blob/main/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/FranckyU/welp-api-mock/blob/main/CODE_OF_CONDUCT.md).
