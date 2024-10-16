# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased](https://github.com/HubSpot/hubspot-api-ruby/compare/v19..0...HEAD)

## [19.0.0] - 2024-10-16

## CMS

- Added `EnumAttributeValidator` to `laguages` in `cms.blogs.blog_posts.models.attach_to_lang_primary_request_v_next`.
- Added parameter `campaign_name` to `cms.blogs.blog_posts.models.content_language_variation`.
- Added parameter `breakpoint_styles` to `cms.blogs.blog_posts.models.styles`.
- Added parameter `name` to `cms.hubdb.rows_api.clone_draft_table_row()`.
- Added parameter `archived` to `cms.hubdb.rows_api.get_draft_table_row_by_id()` and `cms.hubdb.rows_api.get_table_row()`.
- Added parameters `offset` and `archived` to `cms.hubdb.rows_api.get_table_rows()` and `cms.hubdb.rows_api.read_draft_table_rows()`.
- Changed the response object type from  `CollectionResponseWithTotalHubDbTableRowV3ForwardPaging` to `UnifiedCollectionResponseWithTotalBaseHubDbTableRowV3` for `cms.hubdb.rowsApi.cms.hubdb.rows_api.get_table_rows()` and `cms.hubdb.rows_api.read_draft_table_rows()`.
- Changed parameter `batch_input_string: BatchInputString` to `batch_input_hub_db_table_row_batch_clone_request: BatchInputHubDbTableRowBatchCloneRequest` in `cms.hubdb.rows_api.clone_draft_table_row()`.
- Added parameter `content_type` parameter to `cms.hubdb.tables_api.export_table()` and `cms.hubdb.tables_api.get_all_tables()`.
- Added parameter `is_get_localized_schema` parameter to `cms.hubdb.tables_api.get_draft_table_details_by_id()`, `cms.hubdb.tables_api.get_table_details()` and `cms.hubdb.tables_api.update_draft_table()`.
- Added parameters `created_by_user_id`, `updated_by`, `updated_by_user_id`, `created_at`, `created_by` and `updated_at` to `cms.hubdb.models.column` and `cms.hubdb.models.option`.
- Added parameter `is_hubspot_defined` to `cms.hubdb.models.hub_db_table_clone_request`.
- Added `do_async()` and `get_async_status()` methods to `cms.source_code.extract_api`.
- Updated `language` validation: Added a predefined list of `allowed_values` for stricter validation for `cms.blogs.blog_posts.models.attach_to_lang_primary_request_v_next`.
- Updated `type` validation: Expanded `allowed_values` for validation for `cms.hubdb.models.column_request`.
- Removed `cms.source_code.extract_api.extract_by_path()` method.
- Removed `cms.source_code.source_code_extract_api`.

## CRM

- Added `crm.objects.leads` Api client.
- Added method `upsert` to `crm.companies.batch_api`, `crm.contacts.batch_api`, `crm.deals.batch_api`, `crm.line_items.batch_api`, `crm.objects.batch_api`, `crm.objects.calls.batch_api`, `crm.objects.communications.batch_api`, `crm.objects.emails.batch_api`, `crm.objects.meetings.batch_api`, `crm.objects.notes.batch_api`, `crm.objects.postal_mail.batch_api`, `crm.objects.tasks.batch_api`, `crm.objects.taxes.batch_api`, `crm.products.batch_api`, `crm.quotes.batch_api`, `crm.tickets.batch_api`.
- Added parameter `object_write_trace_id` to models: `simple_public_object_input`, `simple_public_object_batch_input`, `simple_public_object_input_for_create` for `crm.companies`, `crm.contacts`, `crm.deals`, `crm.line_items`, `crm.objects`, `crm.objects.calls`, `crm.objects.communications`, `crm.objects.emails`, `crm.objects.meetings`, `crm.objects.notes`, `crm.objects.postal_mail`, `crm.objects.tasks`, `crm.objects.taxes`, `crm.products`, `crm.quotes`, `crm.tickets`.
- Added method `mark_as_ready()` to `crm.extensions.calling.recording_settings_api`.
- Added parameters `created_by_user_id` and `updated_by_user_id` to `crm.schemas.models.object_schema`.
- Added parameter `clear_description` to `crm.schemas.models.object_type_definition_patch`.
- Added parameter `supports_inbound_calling` to `crm.extensions.calling.models.settings_patch_request`, `crm.extensions.calling.models.settings_request` and `crm.extensions.calling.models.settings_response`.
- Changed `association_category` and `association_type_id` parameters can be `nil` in `crm.companies.models.association_spec`, `crm.contacts.models.association_spec`, `crm.deals.models.association_spec`, `crm.tickets.models.association_spec`.
- Changed `types` and `to` parameters can be `nil` in `crm.companies.models.public_associations_for_object`, `crm.contacts.models.public_associations_for_object`, `crm.deals.models.public_associations_for_object`, and `crm.tickets.models.public_associations_for_object`.
- Changed `id` parameters can be `nil` in `crm.companies.models.public_object_id`, `crm.contacts.models.public_object_id`, `crm.deals.models.public_object_id`, and `crm.tickets.models.public_object_id`.
- Changed `limit`, `after`, `sorts`, `properties`, and `filter_groups` parameters can be `nil` in `crm.companies.models.public_object_search_request`, `crm.contacts.models.public_object_search_request`, `crm.deals.models.public_object_search_request`, `crm.objects.models.public_object_search_request`, `crm.objects.calls.models.public_object_search_request`, `crm.objects.communications.models.public_object_search_request`, `crm.objects.emails.models.public_object_search_request`, `crm.objects.goals.models.public_object_search_request`, `crm.objects.postal_mail.models.public_object_search_request`, `crm.objects.tasks.models.public_object_search_request`, `crm.objects.taxes.models.public_object_search_request`, `crm.products.models.public_object_search_request`, `crm.quotes.models.public_object_search_request`, and `crm.tickets.models.public_object_search_request`.
- Changed `associations` parameters can be `nil` in `crm.companies.models.simple_public_object_input_for_create`, `crm.contacts.models.simple_public_object_input_for_create`, `crm.deals.models.simple_public_object_input_for_create`, and `crm.tickets.models.simple_public_object_input_for_create`.
- Changed `metadata` parameters can be `nil` in `crm.pipelines.models.pipeline_stage`, `crm.pipelines.models.pipeline_stage_input` and `crm.pipelines.models.pipeline_stage_patch_input`.
- Renamed `public_object_api` to `merge_api` in `crm.companies`, `crm.contacts`, `crm.deals` and `crm.tickets`.
- Removed `archive`, `create` and `update` methods from `crm.objects.goals.basic_api` and `crm.objects.goals.batch_api`.
- Removed GDPRApi:
`crm.companies.gdpr_api`, `crm.deals.gdpr_api`, `crm.line_items.gdpr_api`, `crm.objects.gdpr_api`, `crm.objects.calls.gdpr_api`, `crm.objects.communications.gdpr_api`, `crm.objects.emails.gdpr_api`, `crm.objects.goals.gdpr_api`, `crm.objects.meetings.gdpr_api`, `crm.objects.notes.gdpr_api`, `crm.objects.postal_mail.gdpr_api`, `crm.objects.tasks.gdpr_api`, `crm.objects.taxes.gdpr_api`, `crm.products.gdpr_api`, `crm.quotes.gdpr_api`, `crm.tickets.gdpr_api`.
- Removed PublicObjectApi:
`crm.line_items.public_object_api`, `crm.objects.public_object_api`, `crm.objects.calls.public_object_api`, `crm.objects.communications.public_object_api`, `crm.objects.emails.public_object_api`, `crm.objects.goals.public_object_api`, `crm.objects.meetings.public_object_api`, `crm.objects.notes.public_object_api`, `crm.objects.postal_mail.public_object_api`, `crm.objects.tasks.public_object_api`, `crm.objects.taxes.public_object_api`, `crm.products.public_object_api`, `crm.quotes.public_object_api`.
- Removed `crm.schemas.public_object_schemas_api`.
- Removed `crm.extensions.accounting` API client.

## CRM Lists

- Added `crm.objects.lists.folders_api` Api.
- Added `crm.lists.mapping_api` Api.
- Added `crm.lists.memberships_api.get_lists()` and `crm.lists.memberships_api.get_page_ordered_by_added_to_list_date()`.
- Added parameter `custom_properties` to `crm.lists.models.list_create_request`.
- Added parameter `size` to `crm.lists.models.public_object_list`.
- Added parameter `coalescing_refine_by` to `crm.lists.models.public_unified_events_filter_branch`.
- Added parameters `list_ids`, `processing_types` and `sort` to `crm.lists.models.list_search_request`.
- Changed `list_ids` type from `Array<integer>` to `Array<string>` in `crm.lists.lists_api.getAll()`.
- Changed `list_id` type from `integer` to `string` in `crm.lists.lists_api.remove()`, `crm.lists.lists_api.restore()`,`crm.lists.lists_api.update_list_filters()`, `crm.lists.lists_api.get_by_id()` and `crm.lists.lists_api.update_name()`.
- Changed `list_id` type from `integer` to `string` and `request_body` type from `Array<integer>` to `Array<string>` in `crm.lists.memberships_api.add()` and `crm.lists.memberships_api.remove()`.
- Changed `list_id` type from `integer` to `string` and `source_list_id` type from `Array<integer>` to `Array<string>` in `crm.lists.memberships_api.add_all_from_list()`.
- Changed `list_id` type from `integer` to `string` in `crm.lists.memberships_api.get_page()`, `crm.lists.memberships_api.add_and_remove()` and `crm.lists.memberships_api.remove_all()`.
- Changed `list_id` type from `integer` to `string` in `crm.lists.models.public_in_list_filter`, `crm.lists.models.public_object_list_search_result`.
- Changed `list_id`, `updated_by_id` and `updated_by_id` type from `integer` to `string` in `crm.lists.models.public_object_list`
- Changed response object type `CollectionResponseLong` to `ApiCollectionResponseJoinTimeAndRecordId` of `crm.lists.memberships_api.get_page()`.
- Changed `record_ids_removed`, `records_ids_added` and `record_ids_missing` type from `Array<integer>` to `Array<string>` in `crm.lists.models.memberships_update_response`.
- Changed `record_ids_to_remove` and `record_ids_to_add` type from `Array<integer>` to `Array<string>` in `crm.lists.models.membership_change_request`.
- Changed `business_unit_id` type from `integer` to `string` and `subscription_ids` from `Array<integer>` to `Array<string>` in `crm.lists.models.public_communication_subscription_filter` and `crm.lists.models.public_property_association_filter_branch_filters_inner`.
- Rename model from `PublicEventAnalyticsFilterCoalescingRefineBy` to `PublicFormSubmissionFilterCoalescingRefineBy`.
- Changed `subscription_ids` type from `Array<integer>` to `Array<string>` in `crm.lists.models.public_email_subscription_filter`.
- Changed `offset` and `additional_properties` parameters can be `nil` in `crm.lists.models.list_search_request`.
- Rename model from `PublicPropertyFilterOperation` to `PublicSurveyMonkeyValueFilterValueComparison`.
- Renamed Api client from `crm.lists.list_app_membership_api` to `crm.lists.memberships_api`.
- Renamed Api client from `crm.lists.list_app_api` to `crm.lists.lists_api`.

## Marketing

- Added `marketing.events.participant_state_api` Api.
- Added `marketing.events.list_associations_api` Api.
- Added new methods `batch_archive`, `batch_upsert`, `cancel` and `complete` to `marketing.events.basic_api`.
- Added parameter `event_completed` to `marketing.events.models.marketing_event_public_default_response`,`marketing.events.models.marketing_event_create_request_params`, `marketing.events.models.marketing_event_default_response`, `marketing.events.models.marketing_event_public_read_response`.
- Added parameters `attendance_state_calculation_timestamp`, `event_completed` and `import_status` to `marketing.events.models.marketing_event_update_request_params`.
- Added parameters `data_sensitivity`, `unit` and `is_encrypted` to `marketing.events.models.property_value`.
- Updated `source` validation: Expanded `allowed_values` for validation for `marketing.events.models.property_value`.
- Renamed method `create` to `record_by_contact_id` in `marketing.events.attendance_subscriber_state_changes_api`.
- Renamed method `create_by_email` to `record_by_contact_email` in `marketing.events.attendance_subscriber_state_changes_api`.
- Renamed method `get_by_id` to `get_details` in `marketing.events.basic_api`.
- Renamed method `replace` to `upsert` in `marketing.events.basic_api`.
- Renamed method `create` to `update` in `marketing.events.settings_api`.
- Renamed method `do_email_upsert_by_id` to `upsert_by_contact_email` in `marketing.events.subscriber_state_changes_api`.
- Renamed method `do_upsert_by_id` to `upsert_by_contact_id` in `marketing.events.subscriber_state_changes_api`.
- Moved method `do_search` from `marketing.events.search_api` to `marketing.events.basic_api`.
- Removed `marketing.events.batch_api`.
- Removed `marketing.events.marketing_events_external_api`.
- Removed `marketing.events.search_api`.

## Events

- Added new method `get_types` to `marketing.events.basic_api`.
- Removed params `index_table_name` and `index_specific_metadata` in`events.events_api.get_page()`.

## Settings Users

- Updated `id_property` validation: Added `allowable_values = ["USER_ID", "EMAIL"]` for `settings.users.users_api.archive()`, `settings.users.users_api.get_by_id()` and `settings.users.users_api.replace()`.
- Added parameters `first_fame` and `last_name` to `settings.users.models.public_user`, `settings.users.models.public_user_update` and `settings.users.models.user_provision_request`.

## [18.0.0] - 2024-02-29

### Changes in Cms AuditLogs API

- Added new param `prev` to `cms.audit_log.models.Paging`.
- Added new param `meta` to `cms.audit_log.models.PublicAuditLog`.
- Added `cms.audit_logs.models.PreviousPage`.

### Changes in Automation Actions Definitions API

- Updated `create()` method to accept `public_action_definition_egg` instead of `extension_action_definition_input` and returned `PublicActionDefinition` instead `ExtensionActionDefinition`.
- Updated `get_by_id()` method to return `PublicActionDefinition` instead of `ExtensionActionDefinition`.
- Updated `get_page()` method to return `CollectionResponsePublicActionDefinitionForwardPaging` instead of `CollectionResponseExtensionActionDefinitionForwardPaging`.
- Updated `update()` method to accept `public_action_definition_patch` instead of `extension_action_definition_patch` and returned `PublicActionDefinition` instead `ExtensionActionDefinition`.

### Changes in Automation Actions Functions API

- Added new function type `POST_ACTION_EXECUTION` to all methods.
- Updated `create_or_replace()` method to return `PublicActionFunctionIdentifier` instead of `ActionFunctionIdentifier`.
- Updated `create_or_replace_by_function_type()` method to return `PublicActionFunctionIdentifier` instead of `ActionFunctionIdentifier`.
- Updated `get_by_function_type()` method to return `PublicActionFunction` instead of `ActionFunction`.
- Updated `get_by_id()` method to return `PublicActionFunction` instead of `ActionFunction`.
- Updated `get_page()` method to return `CollectionResponsePublicActionFunctionIdentifierNoPaging` instead of `CollectionResponseActionFunctionIdentifierNoPaging`.

### Changes in Automation Actions Revisions API

- Updated `get_by_id()` method to return `PublicActionRevision` instead of `ActionRevision`.
- Updated `get_page()` method to return `CollectionResponsePublicActionRevisionForwardPaging` instead of `CollectionResponseActionRevisionForwardPaging`.

### Changes in Automation Actions Models

- Added new param `automation_field_type` to `automation.actions.models.InputFieldDefinition`.
- Added `automation.actions.models.OutputFieldDefinition`.
- Added `automation.actions.models.PublicExecutionTranslationRule`.
- Update params to `automation.actions.models.FieldTypeDefinition`:

```ruby
  {
    :'help_text' => :'String',
    :'referenced_object_type' => :'String',
    :'name' => :'String',
    :'options' => :'Array<Option>',
    :'description' => :'String',
    :'external_options_reference_type' => :'String',
    :'label' => :'String',
    :'type' => :'String',
    :'field_type' => :'String',
    :'options_url' => :'String',
    :'external_options' => :'Boolean'
  }
```

### Changes in CMS Blog APIs

- Updated `attach_to_lang_group()`, `detach_from_lang_group()` and `update_langs()` methods to return `nil` instead of `Error`.
- Added new param `property` to `cms.blogs.authors.blog_authors_api.get_by_id()` and `cms.blogs.authors.blog_authors_api.get_page()`.

### Changes in Blog Models

- Removed `EnumAttributeValidator` from a few models `blogs: authors, blog_posts, tags`.

### Changes in CMS Source Code API

- Renamed method from `cms.source_code.content_api.get()` to `cms.source_code.content_api.download()`.
- Renamed method from `cms.source_code.content_api.replace()` to `cms.source_code.content_api.create_or_update()`.
- Added new param `hash` to `cms.source_code.models.AssetFileMetadata`.
- Added new param `properties` to `cms.source_code.metadata_api.get()`.

### Changes in CRM Associations API (associations) v4

- Methods `archive()`, `create()` and `create_default()` of class `BasicApi` now accept parameters `object_id` and `to_object_id` of type `string` instead of `int`.
- Method `get_page()` of class `BasicApi` now accepts parameter `object_id` of type `string` instead of `int`.
- Changed the type of parameters `to_object_id` and `from_object_id` in class `LabelsBetweenObjectPair` to `string`.
- Changed the type of parameter `to_object_id` in class `MultiAssociatedObjectWithLabel` to `string`.
- Changed the type of property `category` in class `ErrorCategory` to `string`.

### Changes in AssociationsV4 Models

- Changed the type of property `errors` in class `BatchResponsePublicDefaultAssociation` from `StandardError1[]` to `StandardError[]`.
- Added parameter `inverseLabel` to classes `PublicAssociationDefinitionCreateRequest` and `PublicAssociationDefinitionUpdateRequest`.

### Changes in AssociationsV3 Models

- Changed the type of parameter `category` from `ErrorCategory` to `string` in class `StandardError`.

### Changes in Schema API Methods

- Method `delete()` renamed to `archive()` in class `DefinitionsApi`.

### Changes in Oauth Models

- Removed params `scope_to_scope_group_pks, trial_scopes, trial_scope_to_scope_group_pks` from `AccessTokenInfoResponse`.

### Changes in CRM Imports Model

- Added `import_template` and `import_source` params to class `PublicImportResponse`.

### Changes in CRM Lists Memberships API

- Renamed method `add_remove()` to `add_and_remove()`.

### Changes in CRM Pipelines Pipelines API

- Added param `validate_deal_stage_usages_before_delete` to `archive()`, `replace()` and `update()` methods.

### Changes in CRM Pipelines Model

- Added `write_permissions` param to class `PipelineStage`.

### Changes in CRM Schemas Models

- Added `description` param to class `ObjectTypeDefinitionPatch`.
- Added new params: `option_sort_strategy`, `show_currency_symbol`, `form_field`, `referenced_object_type`, `text_display_hint`, `searchable_in_global_search`
and `number_display_hint` to class `ObjectTypePropertyCreate`.

### Changes in CRM Timeline Events API

- Updated `create_batch()` method to return `nil` insted `BatchResponseTimelineEventResponse`.

### Changes in CRM Timeline Model

- Changed the type of parameter `category` from `ErrorCategory` to `string` in class `StandardError`.

### Changes in CRM Extensions Cards API

- Changed parameter order in `archive()` method from `(app_id, card_id)` to `(card_id, app_id)`.
- Changed parameter order in `get_by_id()` method from `(app_id, card_id)` to `(card_id, app_id)` and method return `PublicCardResponse` instead `CardResponse`.
- Changed parameter order in `update()` method from `(app_id, card_id, card_patch_request)` to `(card_id, app_id, card_patch_request)` and method return `PublicCardResponse` instead `CardResponse`.
- Updated `create()` method to return `PublicCardResponse` instead `CardResponse`.
- Updated `get_all()` method to return `PublicCardListResponse` instead `CardListResponse`.

### Changes in CRM Extensions Card Models

- Added new params `serverless_function` and `card_type` to `CardFetchBody` and `CardFetchBodyPatch`.
- Added new param `audit_history` to `PublicCardResponse`.
- Added new allowable value `marketing_events` to `CardObjectTypeBody`.

#### Changes in CRM Extensions Videoconferencing API

- Added `developer_hapikey`

#### Changes in CRM Extensions Videoconferencing Model

- Added new param `fetch_accounts_uri` to `ExternalSettings`.

#### Changes in Events Send API

- Renamed `behavioral_events_tracking_api` to `custom_event_data_api`.

#### Changes in Events Model

- Added new param `prev` to `Paging`.

#### Changes in Files Files API

- Added new method `get_metadata()`.

#### Changes in Files Models

- Added new param  `expires_at` to `File` and `FileUpdateInput`.
- Changed the type of parameter `category` from `ErrorCategory` to `string` in class `StandardError`.

#### Changes in Files Client

- Moved client from `files.files` to `files`.

#### Changes in Marketing Events APIs

- Moved methods `archive()`, `create()`, `do_cancel()`, `get_by_id()`, `replace()` and `update()` from `marketing.events.marketing_events_external_api` to `marketing.events.basic_api`.
- Moved method `do_upsert()` from `marketing.events.marketing_events_external_api` to `marketing.events.batch_api`.
- Moved and renamed method `archive_batch()` to `archive()` from `marketing.events.marketing_events_external_api.archive_batch` to `marketing.events.batch_api.archive`.
- Moved methods `do_email_upsert_by_id()` and `do_upsert_by_id()`  from `marketing.events.marketing_events_external_api` to `marketing.events.subscriber_state_changes`.
- Renamed Api `marketing.events.settings_external_api` to `marketing.events.settings_api`.

#### Changes in Marketing Events Models

- Added new param `is_large_value` to `PropertyValue`.
- Changed the type of parameter `category` from `ErrorCategory` to `string` in class `StandardError`.

#### Changes in Marketing Forms Models

- Added new param `lifecycle_stages` to `HubSpotFormConfiguration`.

#### Changes in Settings Users Model

- Added new params `role_ids`, `send_welcome_email` and `super_admin` to `PublicUser`.

#### Changes in All Models PublicObjectSearchRequest

- Changed the type of parameter `after` from `int` to `string`.

#### Changes in All Models SimplePublicObjectBatchInput

- Added new param `id_property`.

#### Changes in Crm Objects

- Removed `crm.objects.associations_api`.

#### Changes in Crm Objects Postal Mail BasicAPI

- Renamed param `postal_mail` to `postal_mail_id`

## Added new Client APIs

- Added `crm.extensions.calling.recording_settings_api` Api.
- Added `crm.objects.line_items.gdpr_api` Api.
- Added `crm.objects.products.gdpr_api` Api.
- Added `crm.objects.quotes.gdpr_api` Api.
- Added `crm.objects.tickets.gdpr_api` Api.
- Added `crm.objects.calls.gdpr_api` Api.
- Added `crm.objects.emails.gdpr_api` Api.
- Added `crm.objects.meetings.gdpr_api` Api.
- Added `crm.objects.notes.gdpr_api` Api.
- Added `crm.objects.postal_mail.gdpr_api` Api.
- Added `crm.objects.tasks.gdpr_api` Api.
- Added `crm.objects.feedback_submissions.gdpr_api` Api.
- Added `crm.objects.communications.gdpr_api` Api.
- Added `marketing.events.basic_api` Api.
- Added `marketing.events.batch_api` Api.
- Added `marketing.events.subscriber_state_changes_api` Api.

## Removed `hapikey` from

- `cms.audit_logs` Api.
- `cms.site_search` Api.
- `cms.url_redirects` Api.
- `cms.source_code` Apis.
- `cms.blogs.blog_posts` Api.
- `communication_preferences` Apis.
- `conversations.visitor_identification` Api.

## [17.2.0] - 2023-12-19

## Addded

- `cms.pages` Api client.
- `crm.lists` Api client.
- `crm.objects.goals` Api client.
- `crm.objects.taxes` Api client.
- `events.send` Api client.
- `settings.business_units` Api client.

## [17.1.1] - 2023-09-28

## Fixed

- fix initializing `developer_hapikey`

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

- `Hubspot::Helpers::Path.require_with_codegen_mapping()`.

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
