# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [16.0.1] - 2022-11-16
### Fixed

- remove passing params with snake case

## [16.0.0] - 2022-11-10
### Changed

- update generated code
- marketing.events (breaking changes)

## [15.0.2] - 2022-11-04
### Fixed

- pass params with snake case

## [15.0.1] - 2022-10-17
### Fixed

- codegen path mapping for requiring models

## [15.0.0] - 2022-10-12
### Changed

- requiring only codegen files that is using to optimize memory usage

### Removed

- old client syntax support

## [14.5.2] - 2022-10-05
### Fixed

- passing params with existing model

## [14.5.1] - 2022-09-30
### Changed

- with_http methods were added to the discovery classes

## [14.5.0] - 2022-09-30
### Changed

- handling ApiError with retries

## [14.4.0] - 2022-09-27
### Changed

- handling ApiError by passing a block

## [14.3.0] - 2022-08-31
### Changed

- using hash instead of model object for Hubspot::Client with body param

## [14.2.0] - 2022-08-25
### Changed

- using new separate configurations for Hubspot::Client

## [14.1.0] - 2022-08-23
### Changed

- using default ruby StandardError

## [14.0.0] - 2022-08-11
### Changed

- required ruby version was increased to 2.7

## [13.2.0] - 2022-08-09
### Changed

- models updates

### Fixed

- query properties param

## [13.0.0] - 2022-06-29
### Changed (Breaking changes)

- crm.objects.feedback_submissions API

### Fixed

- crm.contacts.basic_api id_property

## [12.0.0] - 2022-06-09
### Added

- cms.source_code API client
- crm.objects.calls API client
- crm.objects.emails API client
- crm.objects.meetings API client
- crm.objects.notes API client
- crm.objects.tasks API client
- marketing.forms API client
- marketing.events API client
- settings.users API client

### Changed (Breaking changes)

- cms.blogs.authors.author_api => cms.blogs.authors.blog_authors_api
- cms.blogs.blog_posts.default_api => cms.blogs.blog_posts.blog_posts_api
- cms.blogs.tags.default_api => cms.blogs.tags.blog_tags_api

## [11.2.0] - 2022-05-12

- added discovery classes

## [11.1.1] - 2021-11-10

- fixed type for the file collection response

## [11.1.0] - 2021-09-10

- added GDPR api modules
- updated generated code

## [11.0.0] - 2021-08-20

- new generated code with updated class names

## [10.1.0] - 2021-06-08

- added CommunicationPreferences api module

## [10.0.0] - 2021-04-15

- retry fix
- search method was changed to do_search

## [9.6.0] - 2021-03-31

- License was added

## [9.5.1] - 2021-03-17

- fixed Files::Files api module

## [9.5.0] - 2021-02-19

- added Events api module
- added Conversations::VisitorIdentification api module

## [9.4.0] - 2021-02-08

- added Crm::Extensions::Accounting api module
- added Crm::Extensions::Calling api module
- added Crm::Extensions::Videoconferencing api module
- added Crm::Objects::FeedbackSubmissions api module
- added Files::Files api module
- added Marketing::Transactional api module

## [9.3.0] - 2021-01-20

- Add automation actions client
- Update blogs clients

## [9.2.0] - 2020-12-16

- Add blogs clients
- Update hubdb client
- Update OAuth client
- Typhoeus was added

## [9.0.0] - 2020-11-02

- Upgrade clients to 4.3.1 version of openapi-generator

## [8.0.1] - 2020-10-23

- Update Hubdb client

## [8.0.0] - 2020-10-20

- Add hubdb client
- Add missing clients to main config

## [7.3.0] - 2020-10-09

- Add timeline events sample app

## [7.2.0] - 2020-10-05

- Add Objects client
- Add Schemas client

## [7.1.1] - 2020-08-17

- Fix sample apps API call bugs

## [7.1.0] - 2020-08-17

- Add Trello integration sample app

## [7.0.0] - 2020-08-04

- Regenerate clients

## [6.0.0] - 2020-07-24

- Regenerate clients

## [5.0.0] - 2020-06-23

- Fix methods of default_api (Site-search client)

## [4.0.0] - 2020-06-09

- Add Add search sample app
- Add AuditLogs client
- Add Domains client
- Add Perfirmance client
- Add SiteSearch client
- Add UrlRedirects client

## [3.3.0] - 2020-06-01

- Add webhooks contacts sample app
- Add imports contacts sample app
- Add webhook signature verification helper

## [3.2.0] - 2020-05-06

- Rename imports#get_all to get_page method
- Update Webhooks client

## [3.1.1] - 2020-05-04

- Add Imports api client to common configuration

## [3.1.0-beta] - 2020-04-23

- Add new models to main client

## [3.0.0-beta] - 2020-04-20

- This CHANGELOG.md file.
- Regenerate clients
- Update sample apps according to regenerated clients
- Update Gemfile