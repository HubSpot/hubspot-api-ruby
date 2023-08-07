# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/HubSpot/hubspot-api-ruby/compare/v17.1.0...HEAD)


## [17.1.0] - 2023-08-07

## Removed `hapikey` from

- `automation.actions.callbacksApi` Api.
- `cms` (all Api clients).
- `communicationPreferences` (all Api clients).
- `conversations` (all API clients).
- `crm` (all Api clients).
- `events` (all Api clients).
- `files` (all Api clients).
- `marketing.events.settingsExternalApi` Api.
- `marketing.transactional` Api client.

## Updated

- Cnange type from `object` to `string` in `cms/hubdb/models/StandardError::category`.
- Cnange type from `StandardError[]` to `StandardError1[]` in `crm/associations/v4/models/BatchResponseSimplePublicObjectWithErrors::errors`.
- Cnange type from `ErrorCategory` to `string` in `crm/companies/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/contacts/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/deals/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/lineitems/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/calls/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/communications/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/emails/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/feedback_submissions/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/meetings/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/notes/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/postal_mail/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/objects/tasks/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/products/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/properties/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/quotes/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `crm/tickets/models/StandardError::category`.
- Cnange type from `ErrorCategory` to `string` in `webhooks/models/StandardError::category`.

## Fixed
- `Hubspot::Helpers::Path.require_with_codegen_mapping()` 


## [17.0.0] - 2023-06-14

## Updated

- Fix `Hubspot::OAuthHelper.authorize_url()` (don't add empty scopes or optional scopes to OAuth url)

## [17.0.0.pre.beta.4] - 2023-05-17

## Added

- added custom exceptions for Signature
- add associations types

## Updated

- remove deprecated `validate_signature`

## [17.0.0-beta.3] - 2023-05-12

## Added

- `crm.associations.v4.basic_api` Api.
- `crm.objects.communications` Api client

### Updated

  - `crm.associations.types_api` => `crm.associations.schema.types_api`.
  - `crm.associations.v4.definitions_api` => `crm.associations.v4.schema.definitions_api`.

## [17.0.0-beta.2] - 2023-04-28
### Updated

-Add new event types to webhooks.


## [17.0.0-beta.1] - 2023-04-11
### Updated

- Rename `cms.hubdb.rows_batch_api.batch_clone_draft_table_rows` => `cms.hubdb.rows_batch_api.clone_draft_table_rows`.
- Rename `cms.hubdb.rows_batch_api.batch_create_draft_table_rows` => `cms.hubdb.rows_batch_api.create_draft_table_rows`.
- Rename `cms.hubdb.rows_batch_api.batch_purge_draft_table_rows` => `cms.hubdb.rows_batch_api.purge_draft_table_rows`.
- Rename `cms.hubdb.rows_batch_api.batch_ReadDrafttable_rows` => `cms.hubdb.rows_batch_api.read_draft_table_rows`.
- Rename `cms.hubdb.rows_batch_api.batch_read_table_rows` => `cms.hubdb.rows_batch_api.read_table_rows`.
- Rename `cms.hubdb.rows_batch_api.batch_replace_draft_table_rows` => `cms.hubdb.rows_batch_api.replace_draft_table_rows`.
- Rename `cms.hubdb.rows_batch_api.batch_update_draft_table_rows` => `cms.hubdb.rows_batch_api.update_draft_table_rows`.
- `cms.hubdb.tables_api.get_draft_table_details_by_id` => `cms.hubdb.tables_api.get_draft_table_details_by_id(+include_foreign_ids: bool)`
- `cms.hubdb.tables_api.get_table_details` => `cms.hubdb.tables_api.get_table_details(+include_foreign_ids: bool)`
- `cms.hubdb.tables_api.update_draft_table` => `cms.hubdb.tables_api.update_draft_table(+include_foreign_ids: bool)`
- Removed `crm.companies.associations_api`.
- Removed `crm.contacts.associations_api`.
- Removed `crm.deals.associations_api`.
- Removed `crm.line_items.associations_api`.
- Removed `crm.objects.calls.associations_api`.
- Removed `crm.objects.emails.associations_api`.
- Removed `crm.objects.feedback_submissions.associations_api`.
- Removed `crm.objects.meetings.associations_api`.
- Removed `crm.objects.notes.associations_api`.
- Removed `crm.objects.postal_mail.associations_api`.
- Removed `crm.objects.tasks.associations_api`.
- Removed `crm.products.associations_api`.
- Removed `crm.quotes.associations_api`.
- Removed `crm.tickets.associations_api`.
- `crm.companies.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.companies.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.contacts.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.contacts.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.deals.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.deals.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.line_items.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.line_items.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.calls.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.calls.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.emails.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.emails.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.feedback_submissions.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.feedback_submissions.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.meetings.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.meetings.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.notes.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.notes.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.postal_mail.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.postal_mail.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.tasks.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.tasks.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.products.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.products.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.quotes.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.quotes.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `crm.objects.tickets.basic_api.create(SimplePublicObjectInput => SimplePublicObjectInputForCreate)`
- `crm.objects.tickets.batch_api.create(BatchInputSimplePublicObjectInput => BatchInputSimplePublicObjectInputForCreate)`
- `marketing.events.marketing_events_external_api.do_search` => `marketing.events.search_api.do_search`
- Rename `oauth.access_tokens_api.get_accessToken` => `oauth.access_tokens_api.get`.
- Rename `oauth.refresh_tokens_api.archive_refresh_token` => `oauth.refresh_tokens_api.archive`.
- Rename `oauth.refresh_tokens_api.get_refreshToken` => `oauth.refresh_tokens_api.get`.
- Rename `oauth.tokens_api.create_token` => `oauth.tokens_api.create`.

### Added

- Added param `properties` to `crm.properties.core_api.get_all`.
- Added param `properties` to `crm.properties.core_api.get_by_name`.
- Added `high_value` param to all Filters.

## [16.4.0] - 2023-03-02
### Added

- Update models for `crm.properties` API client

## [16.3.0] - 2023-02-21
### Added

- `crm.associations.v4` API client

### Fixed

- Fix `auth.oauth.refresh_tokens_api.archive_refresh_token` method


## [16.2.1] - 2023-01-24
### Fixed

- Added missing modules


## [16.2.0] - 2023-01-09
### Added

- Signature's util 'HubSpot.utils.signature'

### Deprecated

- webhook's util 'HubSpot.utils.webhooks'

## [16.1.1] - 2022-12-23
### Fixed

- Added pipelineAuditsApi and pipelineStageAuditsApi to crm.pipelines discovery

## [16.1.0] - 2022-12-22
### Added

- crm.objects.postal_mail API client

## [16.0.4] - 2022-12-08
### Changed

- Added Private App access token to (
    - cms.domains
    - crm.imports
    - crm.objects.emails
    - marketing.events
    )

### Fixed

- Fix all association APIs

## [16.0.3] - 2022-11-23
### Changed

- auth_names => debug_auth_names

## [16.0.2] - 2022-11-22
### Fixed

- added missing public_object_api classes

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