# Common App

Common App Partner API

## Installation

Add these lines to your application's Gemfile:

```ruby
gem 'savon', git: 'https://github.com/haider-cialfo/savon.git'
gem 'common_app'
```

And then execute:

    $ bundle

## Configuration

Create a file with a name common_app.rb in `config/initializers`

Add these lines to `config/initializers/common_app.rb`:

```ruby
CommonApp.configure do |config|
  config.rest_api     = '' # Common App Partner REST API URL
  config.soap_service = '' # Common App Partner Soap Service WSDL URL
  config.api_key      = '' # Your API Key
  config.username     = '' # Your Username
  config.password     = '' # Your Password
  config.proxy        = '' # (Optional) Your Proxy URL
  config.cache        = Rails.cache # Or replace with cache of your own choice
end
```

## Usage

##  Table of Contents

1. Auth
    Rest Token
    Soap Token

1. Create
    Applicant
2. Get    
    Applicant
        Application Status
        Authorization Status
        Details
        Get
    Counselor
        ED2 Status
        ED Status
        FeeWavier Status
        Final Report Status
        Get
        Midyear Report Status
        Optional Report Status
        Recommendation Status
        Secondary Report Status
        Status
    Members
        Deadlines
        List
    Teacher
        RecommendationStatus
    SecondarySchools
3. Invite
    Assign
      Remove Teacher
      Teacher
    Counselor
    RemoveCounselor
    RemoveTeacher
    Teacher
    
4. Post 
    Counselor
        ED
        ED2
        Fee Waiver
        Final Report
        Midyear Report
        Optional Report
        Recommendation
        Secondary Report
    Teacher
        Recommendation 
5. Submit
    Counselor
        ED
        ED2
        Fee Waiver
        Final Report
        Midyear Report
        Optional Report
        Recommendation
        School Report
    Teacher 
        Recommendation

    
    



  
Create Applicant

```
params  = {
            "address" : {
          
              "addressline1" : "Address line 1",
          
              "addressline2" : "Address line 1",
          
              "addressline3" : "Address line 1",
          
              "city" : "City name",
          
              "country" : "Country name",
          
              "state" : "State name",
          
              "zip" : "123456"
          
            },
            "birthdate" : "03/21/2000",
          
            "email" : "test@example.com",
          
            "firstname" : "Example",
          
            "lastname" : "Last Name",
          
            "phone" : {
          
              "countrycode" : "+65",
          
              "number" : "123456789"
          
            }
          }


CommonApp::Create::Applicant.new(params).call

```

Get Methods
    

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Hitendra1632/common_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CommonApp project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/common_app/blob/master/CODE_OF_CONDUCT.md).
