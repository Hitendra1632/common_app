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

- [Auth](#auth)
  - [Rest Token](#rest-token)
  - [Soap Token](#soap-token)
- [Create](#create)
    - [Applicant](#applicant)
- [Get](#get)    
  - [Applicant](#applicant-2)
    - [Application Status](#application-status)
    - [Authorization Status](#authorization-status)
    - [Details](#details)
    - [Get](#get-2)
  - [Counselor](#counselor)
    - [ED2 Status](#ed2-status)
    - [ED Status](#ed-status)
    - [FeeWaiver Status](#feewaiver-status)
    - [Final Report Status](#final-report-status)
    - [Get](#get-3)
    - [Midyear Report Status](#midyear-report-status)
    - [Optional Report Status](#optional-report-status)
    - [Recommendation Status](#recommendation-status)
    - [Secondary Report Status](#secondary-report-status)
    - [Status](#status)
  - [Members](#members)
    - [Deadlines](#deadlines)
    - [List](#list)
  - [Teacher](#teacher)
    - [RecommendationStatus](#recommendationstatus)
  - [SecondarySchools](#secondaryschools)
- [Invite](#invite)
  - [Assign](#assign)
    - [Remove Teacher](#remove-teacher)
    - [Teacher](#teacher-2)
  - [Counselor](#counselor-2)
  - [RemoveCounselor](#removecounselor)
  - [RemoveTeacher](#removeteacher)
  - [Teacher](#teacher-3)
- [Post](#post)
  - [Counselor](#counselor-3)
    - [ED](#ed)
    - [ED2](#ed2)
    - [Fee Waiver](#fee-waiver)
    - [Final Report](#final-report)
    - [Midyear Report](#midyear-report)
    - [Optional Report](#optional-report)
    - [Recommendation](#recommendation)
    - [Secondary Report](#secondary-report)
  - [Teacher](#teacher-4)
      - [Recommendation](#recommendation-2)
- [Submit](#submit)
  - [Counselor](#counselor-4)
    - [ED](#ed-2)
    - [ED2](#ed2-2)
    - [Fee Waiver](#fee-waiver-2)
    - [Final Report](#final-report-2)
    - [Midyear Report](#midyear-report-2)
    - [Optional Report](#optional-report-2)
    - [Recommendation](#recommendation-3)
    - [School Report](#school-report-2)
  - [Teacher](#teacher-5)
    - [Recommendation](#recommendation-4)

## Auth
In the configuration, supply:
- rest_api
- soap_service
- api_key
- username
- password
- proxy
- cache

## Create
### Applicant

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

```
`CommonApp::Create::Applicant.new(params).call`



## Get    
### <a id="applicant-2"></a>Applicant
#### Application Status

```
params = {
    "applicant_id" : "Applicant ID"
    "member_id" : "Member ID"
}
```
`CommonApp::Get::Applicant::ApplicationStatus.new(params).call`

#### Authorization Status
```
params = {
    "applicant_id" : "Applicant ID"
}
```
`CommonApp::Get::Applicant::AuthorizationStatus.new(params).call`

#### Details
```
params = {
    "applicant_id" : "Applicant ID"
}
```
`CommonApp::Get::Applicant::Detail.new(params).call`

#### <a id="get-2"></a>Get
```
params = {
    "email" : "Email Address"
}
```
`CommonApp::Get::Applicant::Get.new(params).call`

### Counselor
#### ED2 Status
```
"applicant_id" : "Applicant ID"
"recommender_id" : "Recommender ID"
"member_id": "Member ID"
```
`CommonApp::Get::Counselor::EarlyDecision2Status.new(applicant_id, recommender_id, member_id).call`

#### ED Status
```
params = {
  "applicant_id" : "Applicant ID"
  "recommender_id" : "Recommender ID"
  "member_id": "Member ID"
}
```
`CommonApp::Get::Counselor::EarlyDecisionStatus.new(params).call`

#### FeeWaiver Status
```
params = {
  "applicant_id" : "Applicant ID"
  "recommender_id" : "Recommender ID"
  "member_id": "Member ID"
}
```
`CommonApp::Get::Counselor::FeeWavierStatus.new(params).call`

#### Final Report Status
```
params = {
  "applicant_id" : "Applicant ID"
  "recommender_id" : "Recommender ID"
  "member_id": "Member ID"
}
```
`CommonApp::Get::Counselor::FinalReportStatus.new(params).call`

#### <a id="get-3"></a>Get
```
params = {
  "email" : "Email Address"
}
```
`CommonApp::Get::Counselor::Get.new(params).call`

#### Midyear Report Status
```
params = {
  "applicant_id" : "Applicant ID"
  "recommender_id" : "Recommender ID"
  "member_id": "Member ID"
}
```
`CommonApp::Get::Counselor::MidyearReportStatus.new(params).call`

#### Optional Report Status
```
params = {
  "applicant_id" : "Applicant ID"
  "recommender_id" : "Recommender ID"
  "member_id": "Member ID"
}
```
`CommonApp::Get::Counselor::OptionalReportStatus.new(params).call`

#### Recommendation Status
```
params = {
  "applicant_id" : "Applicant ID"
  "recommender_id" : "Recommender ID"
  "member_id": "Member ID"
}
```
`CommonApp::Get::Counselor::RecommendationStatus.new(params).call`

#### Secondary Report Status
```
params = {
  "applicant_id" : "Applicant ID"
  "recommender_id" : "Recommender ID"
  "member_id": "Member ID"
}
```
`CommonApp::Get::Counselor::SecondaryReportStatus.new(params).call`

#### Status
```
params = {
  "recommender_id" : "Recommender ID"
}
```
`CommonApp::Get::Counselor::Status.new(params).call`

### Members
#### Deadlines
`CommonApp::Get::Members::Deadlines.new.call`

#### List
`CommonApp::Get::Members::List.new.call`

### Teacher
#### RecommendationStatus
```
params = {
    "applicant_id" : "Applicant ID"
    "recommender_id" : "recommender_id"
    "member_id" : "member_id"
}
```
`CommonApp::Get::Teacher::RecommendationStatus.new(params).call`

### SecondarySchools
`CommonApp::Get::SecondarySchools.new.call`

## Invite
### Assign
#### Remove Teacher
```
params = {
    "applicant_id" : "Applicant ID"
    "recommender_id" : "Recommender ID"
    "member_id" : "Member ID"
}
```
`CommonApp::Invite::Assign::RemoveTeacher.new(params).call`

#### <a id="teacher-2"></a>Teacher
```
params = {
    "applicant_id" : "Applicant ID"
    "recommender_id" : "Recommender ID"
    "member_id" : "Member ID"
}
```
`CommonApp::Invite::Assign::Teacher.new(params).call`

#### <a id="counselor-2"></a>Counselor
```
params = {
    "applicant_id" = "Applicant ID"
    "counselor" = "Counselor"
}
```
`CommonApp::Invite::Counselor.new(params).call`

#### RemoveCounselor
```
params = {
    "applicant_id" = "Applicant ID"
    "counselor" = "Counselor"
}
```
`CommonApp::Invite::RemoveCounselor.new(params).call`

#### RemoveTeacher
```
params = {
    "applicant_id" = "Applicant ID"
    "recommender_id" = "Recommender ID"
}
```
`CommonApp::Invite::RemoveTeacher.new(params).call`

#### <a id="teacher-3"></a>Teacher
```
params = {
    "applicant_id" = "Applicant ID"
    "teacher" = "Teacher"
    "subject" = "Subject"
}
```
`CommonApp::Invite::Teacher.new(params).call`

## Post
### <a id="counselor-3"></a>Counselor
#### ED
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::ED.new(params).call`

#### ED2
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::ED2.new(params).call`


#### Fee Waiver
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::FeeWaiver.new(params).call`

#### Final Report
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::FinalReport.new(params).call`

#### Midyear Report
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::MidyearReport.new(params).call`

#### Optional Report
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::OptionalReport.new(params).call`

#### Recommendation
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::Recommendation.new(params).call`

#### Secondary Report
```{
  Answers: [
    {
     AnswerData: {
              QuestionId: question_id,
              Response: response
            },
     AnswerData: {
              QuestionId: question_id,
              UploadFileContents: file content
            }       
    }
  }
  ],
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Counselor::SecondaryReport.new(params).call`

### <a id="teacher-4"></a>Teacher
#### <a id="recommendation-2"></a>Recommendation
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Post::Teacher::Recommendation.new(params).call`

## Submit
### <a id="counselor-4"></a>Counselor
#### <a id="ed-2"></a>ED
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Submit::Counselor::EarlyDecision.new(params).call`

#### <a id="ed2-2"></a>ED2
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Submit::Counselor::EarlyDecision2.new(params).call`

#### <a id="fee-waiver-2"></a>Fee Waiver
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Submit::Counselor::FeeWaiver.new(params).call`

#### <a id="final-report-2"></a>Final Report
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
  MemberId: member_id
  SchoolId: school_id
}
```
`CommonApp::Submit::Counselor::FinalReport.new(params).call`

#### <a id="midyear-report-2"></a>Midyear Report
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Submit::Counselor::MidYearReport.new(params).call`

#### <a id="optional-report-2"></a>Optional Report
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Submit::Counselor::OptionalReport.new(params).call`

#### <a id="recommendation-3"></a>Recommendation
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Submit::Counselor::Recommendation.new(params).call`

#### <a id="school-report-2"></a>School Report
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
}
```
`CommonApp::Submit::Counselor::SchoolReport.new(params).call`

### <a id="teacher-5"></a>Teacher
#### <a id="recommendation-4"></a>Recommendation
```
params = {
  ApplicantId: common_app_applicant_id,
  RecommenderId: common_app_recommender_id
  MemberId: member_id
  SchoolId: school_id
}
```
`CommonApp::Submit::Teacher::Recommendation.new(params).call`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Hitendra1632/common_app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CommonApp project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hitendra1632/common_app/blob/master/CODE_OF_CONDUCT.md).
