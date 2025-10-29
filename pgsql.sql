--Table: fg_system
CREATE TABLE IF NOT EXISTS fg_system
(
  guid 	character varying(128) NOT NULL PRIMARY KEY,
  value integer NOT NULL
);


--New schema version marker
INSERT INTO fg_system (guid, value) VALUES ('0027BD8D-874E-4091-BAFE-05AED7691B6C', 42);


--Table: fg_system_s
CREATE TABLE IF NOT EXISTS fg_system_s
(
  name 	character varying(128) NOT NULL PRIMARY KEY,
  value character varying(255) DEFAULT NULL
);


--Table: db_stats
CREATE TABLE IF NOT EXISTS db_stats
(
  stat_name 	character varying(128) NOT NULL PRIMARY KEY,
  stat_value 	bigint DEFAULT 0
);


--Table: collections_stats
CREATE TABLE IF NOT EXISTS collections_stats
(
  collection_name 				character varying(64) NOT NULL PRIMARY KEY,
  collection_upload_size 		bigint DEFAULT 0 NOT NULL,
  collection_upload_count 		bigint DEFAULT 0 NOT NULL,
  collection_upload_timestamp 	bigint DEFAULT 0 NOT NULL
);


--Table: docs_ids_smtp
CREATE TABLE IF NOT EXISTS docs_ids_smtp
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_smtp_guid_idx ON docs_ids_smtp (doc_guid);
CREATE UNIQUE INDEX docs_ids_smtp_doc_idx ON docs_ids_smtp (doc_id);


--Table: docs_ids_pop3
CREATE TABLE IF NOT EXISTS docs_ids_pop3
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_pop3_guid_idx ON docs_ids_pop3 (doc_guid);
CREATE UNIQUE INDEX docs_ids_pop3_doc_idx ON docs_ids_pop3 (doc_id);


--Table: docs_ids_imap
CREATE TABLE IF NOT EXISTS docs_ids_imap
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_imap_guid_idx ON docs_ids_imap (doc_guid);
CREATE UNIQUE INDEX docs_ids_imap_doc_idx ON docs_ids_imap (doc_id);


--Table: docs_ids_mapi
CREATE TABLE IF NOT EXISTS docs_ids_mapi
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_mapi_guid_idx ON docs_ids_mapi (doc_guid);
CREATE UNIQUE INDEX docs_ids_mapi_doc_idx ON docs_ids_mapi (doc_id);


--Table: docs_ids_ftp
CREATE TABLE IF NOT EXISTS docs_ids_ftp
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_ftp_guid_idx ON docs_ids_ftp (doc_guid);
CREATE UNIQUE INDEX docs_ids_ftp_doc_idx ON docs_ids_ftp (doc_id);


--Table: docs_ids_httpurls
CREATE TABLE IF NOT EXISTS docs_ids_httpurls
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_httpurls_guid_idx ON docs_ids_httpurls (doc_guid);
CREATE UNIQUE INDEX docs_ids_httpurls_doc_idx ON docs_ids_httpurls (doc_id);


--Table: docs_ids_httpreq
CREATE TABLE IF NOT EXISTS docs_ids_httpreq
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_httpreq_guid_idx ON docs_ids_httpreq (doc_guid);
CREATE UNIQUE INDEX docs_ids_httpreq_doc_idx ON docs_ids_httpreq (doc_id);


--Table: docs_ids_mailproc
CREATE TABLE IF NOT EXISTS docs_ids_mailproc
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_mailproc_guid_idx ON docs_ids_mailproc (doc_guid);
CREATE UNIQUE INDEX docs_ids_mailproc_doc_idx ON docs_ids_mailproc (doc_id);


--Table: docs_ids_printer
CREATE TABLE IF NOT EXISTS docs_ids_printer
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_printer_guid_idx ON docs_ids_printer (doc_guid);
CREATE UNIQUE INDEX docs_ids_printer_doc_idx ON docs_ids_printer (doc_id);


--Table: docs_ids_desktop
CREATE TABLE IF NOT EXISTS docs_ids_desktop
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_desktop_guid_idx ON docs_ids_desktop (doc_guid);
CREATE UNIQUE INDEX docs_ids_desktop_doc_idx ON docs_ids_desktop (doc_id);


--Table: docs_ids_clipboard
CREATE TABLE IF NOT EXISTS docs_ids_clipboard
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_clipboard_guid_idx ON docs_ids_clipboard (doc_guid);
CREATE UNIQUE INDEX docs_ids_clipboard_doc_idx ON docs_ids_clipboard (doc_id);


--Table: docs_ids_browsers
CREATE TABLE IF NOT EXISTS docs_ids_browsers
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_browsers_guid_idx ON docs_ids_browsers (doc_guid);
CREATE UNIQUE INDEX docs_ids_browsers_doc_idx ON docs_ids_browsers (doc_id);


--Table: docs_ids_keylogger
CREATE TABLE IF NOT EXISTS docs_ids_keylogger
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_keylogger_guid_idx ON docs_ids_keylogger (doc_guid);
CREATE UNIQUE INDEX docs_ids_keylogger_doc_idx ON docs_ids_keylogger (doc_id);


--Table: docs_ids_devices
CREATE TABLE IF NOT EXISTS docs_ids_devices
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_devices_guid_idx ON docs_ids_devices (doc_guid);
CREATE UNIQUE INDEX docs_ids_devices_doc_idx ON docs_ids_devices (doc_id);


--Table: docs_ids_sharedfiles
CREATE TABLE IF NOT EXISTS docs_ids_sharedfiles
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_sharedfiles_guid_idx ON docs_ids_sharedfiles (doc_guid);
CREATE UNIQUE INDEX docs_ids_sharedfiles_doc_idx ON docs_ids_sharedfiles (doc_id);


--Table: docs_ids_cddvd
CREATE TABLE IF NOT EXISTS docs_ids_cddvd
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_cddvd_guid_idx ON docs_ids_cddvd (doc_guid);
CREATE UNIQUE INDEX docs_ids_cddvd_doc_idx ON docs_ids_cddvd (doc_id);


--Table: docs_ids_usbfiles
CREATE TABLE IF NOT EXISTS docs_ids_usbfiles
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_usbfiles_guid_idx ON docs_ids_usbfiles (doc_guid);
CREATE UNIQUE INDEX docs_ids_usbfiles_doc_idx ON docs_ids_usbfiles (doc_id);


--Table: docs_ids_cloudfiles
CREATE TABLE IF NOT EXISTS docs_ids_cloudfiles
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_cloudfiles_guid_idx ON docs_ids_cloudfiles (doc_guid);
CREATE UNIQUE INDEX docs_ids_cloudfiles_doc_idx ON docs_ids_cloudfiles (doc_id);


--Table: docs_ids_wsindexer
CREATE TABLE IF NOT EXISTS docs_ids_wsindexer
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_wsindexer_guid_idx ON docs_ids_wsindexer (doc_guid);
CREATE UNIQUE INDEX docs_ids_wsindexer_doc_idx ON docs_ids_wsindexer (doc_id);


--Table: docs_ids_webmsg
CREATE TABLE IF NOT EXISTS docs_ids_webmsg
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_webmsg_guid_idx ON docs_ids_webmsg (doc_guid);
CREATE UNIQUE INDEX docs_ids_webmsg_doc_idx ON docs_ids_webmsg (doc_id);


--Table: docs_ids_conversations
CREATE TABLE IF NOT EXISTS docs_ids_conversations
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_conversations_guid_idx ON docs_ids_conversations (doc_guid);
CREATE UNIQUE INDEX docs_ids_conversations_doc_idx ON docs_ids_conversations (doc_id);


--Table: docs_ids_screenshots
CREATE TABLE IF NOT EXISTS docs_ids_screenshots
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_screenshots_guid_idx ON docs_ids_screenshots (doc_guid);
CREATE UNIQUE INDEX docs_ids_screenshots_doc_idx ON docs_ids_screenshots (doc_id);


--Table: docs_ids_files_audit
CREATE TABLE IF NOT EXISTS docs_ids_files_audit
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_files_audit_guid_idx ON docs_ids_files_audit (doc_guid);
CREATE UNIQUE INDEX docs_ids_files_audit_doc_idx ON docs_ids_files_audit (doc_id);


--Table: docs_ids_webcam
CREATE TABLE IF NOT EXISTS docs_ids_webcam
(
  doc_guid_id			bigserial NOT NULL PRIMARY KEY,
  doc_guid 				character varying(40) NOT NULL,
  doc_id 				character varying(1024) NOT NULL
);

CREATE UNIQUE INDEX docs_ids_webcam_guid_idx ON docs_ids_webcam (doc_guid);
CREATE UNIQUE INDEX docs_ids_webcam_doc_idx ON docs_ids_webcam (doc_id);


--Table: domains
CREATE TABLE IF NOT EXISTS domains (
  domain_id			bigint NOT NULL PRIMARY KEY,
  domain_sid    	character varying(184) NOT NULL,
  domain_name   	character varying(60) DEFAULT NULL,
  domain_dns_name   character varying(765) DEFAULT NULL
);


--Table: machines
CREATE TABLE IF NOT EXISTS machines (
  machine_id			bigint NOT NULL PRIMARY KEY,
  domain_id				bigint DEFAULT NULL,
  machine_sid    		character varying(184) NOT NULL,
  machine_name    		character varying(192) NOT NULL,
  machine_dns_name   	character varying(765) DEFAULT NULL,
  machine_domain_sid    character varying(184) DEFAULT NULL
);


--Table: users
CREATE TABLE IF NOT EXISTS users (
  user_id				bigint NOT NULL PRIMARY KEY,
  domain_id				bigint DEFAULT NULL,
  user_sid    			character varying(184) NOT NULL,
  user_name    			character varying(192) DEFAULT NULL,
  user_display_name 	character varying(765) DEFAULT NULL
);


--Table: address_sessions
CREATE TABLE IF NOT EXISTS address_sessions (
  address_session_id			bigint NOT NULL PRIMARY KEY,
  address_session_ip_address	character varying(40) NOT NULL
);


--Table: user_sessions
CREATE TABLE IF NOT EXISTS user_sessions (
  user_session_id		bigint NOT NULL PRIMARY KEY,
  user_id				bigint NOT NULL,
  machine_id			bigint NOT NULL
);


--Table: domain_users
CREATE TABLE IF NOT EXISTS domain_users (
  domain_user_id				bigint NOT NULL PRIMARY KEY,
  domain_user_guid				character varying(40) NOT NULL,
  domain_user_sid				character varying(184) DEFAULT NULL,
  domain_user_email_address		character varying(255) DEFAULT NULL,
  domain_user_legacy_exchdn		character varying(2048) DEFAULT NULL
);

CREATE UNIQUE INDEX domain_user_guid_idx ON domain_users (domain_user_guid);
CREATE INDEX domain_user_sid_idx ON domain_users (domain_user_sid);
CREATE INDEX domain_user_email_address_idx ON domain_users (domain_user_email_address);
CREATE INDEX domain_user_legacy_exchdn_idx ON domain_users (domain_user_legacy_exchdn);


--Table: domain_containers
CREATE TABLE IF NOT EXISTS domain_containers (
  domain_container_id		bigint NOT NULL PRIMARY KEY,
  domain_container_uuid		character varying(40) NOT NULL
);

CREATE INDEX domain_container_uuid_idx ON domain_containers (domain_container_uuid);


--Table: domain_containers_chains
CREATE TABLE IF NOT EXISTS domain_containers_chains (
  domain_containers_chain_id	bigint NOT NULL,
  domain_container_id			bigint NOT NULL,

  PRIMARY KEY (domain_containers_chain_id, domain_container_id)
);


--Table: domain_containers_chain_user
CREATE TABLE IF NOT EXISTS domain_containers_chain_user (
  domain_containers_chain_id	bigint NOT NULL,
  user_id						bigint NOT NULL,

  PRIMARY KEY (domain_containers_chain_id, user_id)
);


--Table: domain_containers_chain_machine
CREATE TABLE IF NOT EXISTS domain_containers_chain_machine (
  domain_containers_chain_id	bigint NOT NULL,
  machine_id					bigint NOT NULL,

  PRIMARY KEY (domain_containers_chain_id, machine_id)
);


--Table: domain_containers_chain_domain_user
CREATE TABLE IF NOT EXISTS domain_containers_chain_domain_user (
  domain_containers_chain_id	bigint NOT NULL,
  domain_user_id				bigint NOT NULL,

  PRIMARY KEY (domain_containers_chain_id, domain_user_id)
);

CREATE INDEX dccdu_domain_user_id_idx ON domain_containers_chain_domain_user (domain_user_id);


--Table: address_sessions_days
CREATE TABLE IF NOT EXISTS address_sessions_days (
  address_session_day_id    bigint NOT NULL PRIMARY KEY,
  address_session_id		bigint NOT NULL,
  address_session_day		integer NOT NULL
);

CREATE INDEX address_sessions_days_day_idx ON address_sessions_days (address_session_day);


--Table: user_sessions_days
CREATE TABLE IF NOT EXISTS user_sessions_days (
  user_session_day_id    	bigint NOT NULL PRIMARY KEY,
  user_session_id			bigint NOT NULL,
  user_session_day			integer NOT NULL
);

CREATE INDEX user_session_days_day_idx ON user_sessions_days (user_session_day);


--Table: sessions_days
CREATE TABLE IF NOT EXISTS sessions_days (
  session_day_id			bigserial NOT NULL PRIMARY KEY,
  user_session_day_id		bigint DEFAULT NULL,
  address_session_day_id	bigint DEFAULT NULL,
  session_day				integer NOT NULL,
  session_day_tzbias		smallint DEFAULT NULL
);

CREATE INDEX sessions_days_day_idx ON sessions_days (session_day);


--Table: messengers
CREATE TABLE IF NOT EXISTS messengers (
  messenger_id     	bigint NOT NULL PRIMARY KEY,
  messenger_name	character varying(64) NOT NULL,
  messenger_type	character varying(64) DEFAULT NULL
);


--Table: conversations
CREATE TABLE IF NOT EXISTS conversations (
  conversation_id     		bigint NOT NULL PRIMARY KEY,
  messenger_id				bigint NOT NULL,
  conversation_hash    		character varying(64) NOT NULL
);


--Table: address_sessions_dayconvs
CREATE TABLE IF NOT EXISTS address_sessions_dayconvs (
  address_session_dayconv_id    bigint NOT NULL PRIMARY KEY,
  address_session_day_id		bigint NOT NULL,
  conversation_id				bigint NOT NULL,
  address_session_day			integer NOT NULL
);

CREATE INDEX address_sessions_dayconvs_day_idx ON address_sessions_dayconvs (address_session_day);


--Table: user_sessions_dayconvs
CREATE TABLE IF NOT EXISTS user_sessions_dayconvs (
  user_session_dayconv_id     	bigint NOT NULL PRIMARY KEY,
  user_session_day_id			bigint NOT NULL,
  conversation_id				bigint NOT NULL,
  user_session_day				integer NOT NULL
);

CREATE INDEX user_sessions_dayconvs_day_idx ON user_sessions_dayconvs (user_session_day);


--Table: sessions_dayconvs
CREATE TABLE IF NOT EXISTS sessions_dayconvs (
  session_dayconv_id			bigserial NOT NULL PRIMARY KEY,
  user_session_dayconv_id		bigint DEFAULT NULL,
  address_session_dayconv_id	bigint DEFAULT NULL,
  sessions_dayconv_day			integer NOT NULL,
  sessions_dayconv_day_tzbias	smallint DEFAULT NULL
);

CREATE INDEX sessions_dayconvs_day_idx ON sessions_dayconvs (sessions_dayconv_day);


--Table: web_categories
CREATE TABLE IF NOT EXISTS web_categories (
  web_category_id	bigint NOT NULL PRIMARY KEY,
  web_category_name character varying(2048) NOT NULL
);

CREATE INDEX web_category_name_idx ON web_categories (web_category_name);


--Table: web_categories_chains
CREATE TABLE IF NOT EXISTS web_categories_chains (
  web_category_chain_id		bigint NOT NULL,
  web_category_id			bigint NOT NULL,
  web_category_is_main		boolean NOT NULL,

  PRIMARY KEY (web_category_chain_id, web_category_id)
);


--Table: app_categories
CREATE TABLE IF NOT EXISTS app_categories (
  app_category_id	bigint NOT NULL PRIMARY KEY,
  app_category_name character varying(2048) NOT NULL
);

CREATE INDEX app_category_name_idx ON app_categories (app_category_name);


--Table: app_categories_chains
CREATE TABLE IF NOT EXISTS app_categories_chains (
  app_category_chain_id		bigint NOT NULL,
  app_category_id			bigint NOT NULL,
  app_category_is_main		boolean NOT NULL,

  PRIMARY KEY (app_category_chain_id, app_category_id)
);


--Table: users_timelines
CREATE TABLE IF NOT EXISTS users_timelines (
  user_timeline_id				bigint NOT NULL PRIMARY KEY,
  session_day_id				bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  user_timeline_day				integer NOT NULL,
  user_timeline_updated_dtime	integer NOT NULL,
  user_timeline_data			bytea NOT NULL
);

CREATE INDEX user_timeline_session_day_idx ON users_timelines (session_day_id);
CREATE INDEX user_timeline_day_idx ON users_timelines (user_timeline_day);
CREATE INDEX user_timeline_updated_idx ON users_timelines (user_timeline_updated_dtime);
CREATE INDEX user_timeline_id_day_idx ON users_timelines (session_day_id, user_timeline_id) WHERE session_day_id IS NOT NULL;


--Table: processes
CREATE TABLE IF NOT EXISTS processes (
  process_id				bigint NOT NULL PRIMARY KEY,
  app_category_chain_id		bigint DEFAULT NULL,
  process_name				character varying(765) NOT NULL,
  process_filepath			character varying(765) NOT NULL,
  process_version			character varying(32) DEFAULT NULL,
  process_product_name		character varying(384) DEFAULT NULL,
  process_company_name		character varying(384) DEFAULT NULL,
  process_description		character varying(384) DEFAULT NULL,
  process_hash_crc32        character varying(8)   DEFAULT NULL,
  process_hash_md5          character varying(32)  DEFAULT NULL,
  process_hash_sha1         character varying(40)  DEFAULT NULL,
  process_hash_sha2_256     character varying(64)  DEFAULT NULL
);

CREATE INDEX processes_app_category_chain_idx ON processes (app_category_chain_id);


--Table: processes_icons
CREATE TABLE IF NOT EXISTS processes_icons (
  process_icon_id		bigint NOT NULL PRIMARY KEY,
  process_id			bigint NOT NULL,
  process_icon_format	integer DEFAULT 0,
  process_icon_hash		character varying(64) NOT NULL,
  process_icon			bytea NOT NULL
);


--Table: processes_events
CREATE TABLE IF NOT EXISTS processes_events (
  process_event_id			bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint NOT NULL,
  process_event_dtime		integer NOT NULL,
  process_event_started		boolean NOT NULL,
  process_event_args   		character varying(2048) DEFAULT NULL,
  processes_events_block_rules text DEFAULT NULL
);

CREATE INDEX processes_events_session_day_idx ON processes_events (session_day_id);
CREATE INDEX processes_events_dtime_idx ON processes_events (process_event_dtime);
CREATE INDEX processes_events_id_day_idx ON processes_events (session_day_id, process_event_id) WHERE session_day_id IS NOT NULL;


--Table: app_windows_events
CREATE TABLE IF NOT EXISTS app_windows_events (
  app_window_event_id		bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  app_window_event_dtime	integer NOT NULL,
  app_window_activated		boolean DEFAULT NULL
);

CREATE INDEX app_windows_events_session_day_idx ON app_windows_events (session_day_id);
CREATE INDEX app_windows_events_dtime_idx ON app_windows_events (app_window_event_dtime);
CREATE INDEX app_windows_events_id_day_idx ON app_windows_events (session_day_id, app_window_event_id) WHERE session_day_id IS NOT NULL;


--Table: users_events
CREATE TABLE IF NOT EXISTS users_events (
  user_event_id				bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  user_event_dtime			integer NOT NULL,
  user_event_code			integer NOT NULL,
  user_event_info			bytea DEFAULT NULL
);

CREATE INDEX users_events_session_day_idx ON users_events (session_day_id);
CREATE INDEX users_events_dtime_idx ON users_events (user_event_dtime);
CREATE INDEX users_events_id_day_idx ON users_events (session_day_id, user_event_id) WHERE session_day_id IS NOT NULL;


--Table: mail_accounts
CREATE TABLE IF NOT EXISTS mail_accounts (
  mail_account_id		bigint NOT NULL PRIMARY KEY,
  mail_account_type		character varying(64) NOT NULL,
  mail_account_name		character varying(765) NOT NULL,
  mail_account_tzbias	smallint DEFAULT 0
);


--Table: mails
CREATE TABLE IF NOT EXISTS mails (
  mail_id			bigserial NOT NULL PRIMARY KEY,
  user_id			bigint DEFAULT NULL,
  mail_account_id	bigint NOT NULL,
  mail_dtime		integer NOT NULL,
  mail_flags		integer DEFAULT 0,
  mail_data_size   	bigint NOT NULL,
  mail_data			bytea DEFAULT NULL,
  mail_report		bytea DEFAULT NULL
);

CREATE INDEX mails_user_id_idx ON mails (user_id);
CREATE INDEX mails_dtime_idx ON mails (mail_dtime);

--Table: smtp
CREATE TABLE IF NOT EXISTS smtp (
  smtp_id					bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  smtp_host_address			character varying(40) DEFAULT NULL,
  smtp_host_port			integer DEFAULT NULL,
  smtp_dtime				integer NOT NULL,
  smtp_flags				integer DEFAULT 0,
  smtp_mail_flags			integer DEFAULT 0,
  smtp_user					character varying(255) DEFAULT NULL,
  smtp_pass					character varying(255) DEFAULT NULL,
  smtp_mfrom				character varying(960) DEFAULT NULL,
  smtp_rcptto				text DEFAULT NULL,
  smtp_msg_size   			bigint NOT NULL,
  smtp_msg					bytea DEFAULT NULL,
  smtp_block_rules			text DEFAULT NULL
);

CREATE INDEX smtp_session_day_idx ON smtp (session_day_id);
CREATE INDEX smtp_dtime_idx ON smtp (smtp_dtime);


--Table: pop3
CREATE TABLE IF NOT EXISTS pop3 (
  pop3_id					bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  pop3_host_address			character varying(40) DEFAULT NULL,
  pop3_host_port			integer DEFAULT NULL,
  pop3_dtime				integer NOT NULL,
  pop3_flags				integer DEFAULT 0,
  pop3_mail_flags			integer DEFAULT 0,
  pop3_user					character varying(255) DEFAULT NULL,
  pop3_pass					character varying(255) DEFAULT NULL,
  pop3_msg_size   			bigint NOT NULL,
  pop3_msg					bytea DEFAULT NULL
);

CREATE INDEX pop3_session_day_idx ON pop3 (session_day_id);
CREATE INDEX pop3_dtime_idx ON pop3 (pop3_dtime);


--Table: imap
CREATE TABLE IF NOT EXISTS imap (
  imap_id					bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  imap_host_address			character varying(40) DEFAULT NULL,
  imap_host_port			integer DEFAULT NULL,
  imap_dtime				integer NOT NULL,
  imap_flags				integer DEFAULT 0,
  imap_mail_flags			integer DEFAULT 0,
  imap_rcv					boolean NOT NULL,
  imap_user					character varying(255) DEFAULT NULL,
  imap_pass					character varying(255) DEFAULT NULL,
  imap_dtype   				integer DEFAULT 0,
  imap_msg_size   			bigint NOT NULL,
  imap_msg					bytea DEFAULT NULL
);

CREATE INDEX imap_session_day_idx ON imap (session_day_id);
CREATE INDEX imap_dtime_idx ON imap (imap_dtime);


--Table: mapi_outlook
CREATE TABLE IF NOT EXISTS mapi_outlook (
  mapi_outlook_id			bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  mapi_outlook_dtime		integer NOT NULL,
  mapi_outlook_flags		integer DEFAULT 0,
  mapi_outlook_mail_flags	integer DEFAULT 0,
  mapi_outlook_rcv			boolean NOT NULL,
  mapi_outlook_ludn			character varying(2048) DEFAULT NULL,
  mapi_outlook_profile		character varying(765) DEFAULT NULL,
  mapi_outlook_msgid		character varying(255) DEFAULT NULL,
  mapi_outlook_display		character varying(765) DEFAULT NULL,
  mapi_outlook_size   		bigint NOT NULL,
  mapi_outlook_msg			bytea DEFAULT NULL,
  mapi_outlook_block_rules	text DEFAULT NULL
);

CREATE INDEX mapi_outlook_session_day_idx ON mapi_outlook (session_day_id);
CREATE INDEX mapi_outlook_dtime_idx ON mapi_outlook (mapi_outlook_dtime);


--Table: http_urls
CREATE TABLE IF NOT EXISTS http_urls (
  http_url_id				bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  web_category_chain_id		bigint DEFAULT NULL,
  http_url_host_address		character varying(40) DEFAULT NULL,
  http_url_host_port		integer DEFAULT NULL,
  http_url_dtime			integer NOT NULL,
  http_url_flags			integer DEFAULT 0,
  http_url_request			text NOT NULL,
  http_url_block_rules		text DEFAULT NULL
);

CREATE INDEX http_url_session_day_idx ON http_urls (session_day_id);
CREATE INDEX http_url_dtime_idx ON http_urls (http_url_dtime);
CREATE INDEX http_url_web_category_chain_idx ON http_urls (web_category_chain_id);
CREATE INDEX http_url_id_day_idx ON http_urls (session_day_id, http_url_id) WHERE session_day_id IS NOT NULL;


--Table: http_requests_data
CREATE TABLE IF NOT EXISTS http_requests_data (
  http_request_data_id 			bigserial NOT NULL PRIMARY KEY,
  http_request_id				bigint NOT NULL,
  http_request_data_chunk_off 	bigint NOT NULL,
  http_request_data_chunk_size 	bigint NOT NULL,
  http_request_data_size		bigint NOT NULL,
  http_request_data_chunk		bytea DEFAULT NULL
);

CREATE INDEX http_requests_data_file_idx ON http_requests_data (http_request_id);
CREATE INDEX http_request_data_chunk_idx ON http_requests_data (http_request_id, http_request_data_chunk_off);


--Table: http_requests
CREATE TABLE IF NOT EXISTS http_requests (
  http_request_id				bigint NOT NULL PRIMARY KEY,
  session_day_id				bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  web_category_chain_id			bigint DEFAULT NULL,
  http_request_host_address		character varying(40) DEFAULT NULL,
  http_request_host_port		integer DEFAULT NULL,
  http_request_dtime			integer NOT NULL,
  http_request_flags			integer DEFAULT 0,
  http_request_size   			bigint NOT NULL,
  http_request_request			text NOT NULL,
  http_request_block_rules		text DEFAULT NULL,
  http_request_has_data			boolean DEFAULT NULL,
  http_request_body				bytea DEFAULT NULL
);

CREATE INDEX http_request_session_day_idx ON http_requests (session_day_id);
CREATE INDEX http_request_dtime_idx ON http_requests (http_request_dtime);
CREATE INDEX http_request_web_category_chain_idx ON http_requests (web_category_chain_id);
CREATE INDEX http_request_id_day_idx ON http_requests (session_day_id, http_request_id) WHERE session_day_id IS NOT NULL;

--Table: printers
CREATE TABLE IF NOT EXISTS printers (
  printer_id		bigint NOT NULL PRIMARY KEY,
  printer_name		character varying(765) NOT NULL
);


--Table: printers_prints_data
CREATE TABLE IF NOT EXISTS printers_prints_data (
  printers_print_data_id 			bigserial NOT NULL PRIMARY KEY,
  printer_doc_id					bigint NOT NULL,
  printers_print_data_chunk_off 	bigint NOT NULL,
  printers_print_data_chunk_size 	bigint NOT NULL,
  printers_print_data_size 			bigint NOT NULL,
  printers_print_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX printers_prints_data_file_idx ON printers_prints_data (printer_doc_id);
CREATE INDEX printers_print_data_chunk_idx ON printers_prints_data (printer_doc_id, printers_print_data_chunk_off);


--Table: printers_prints
CREATE TABLE IF NOT EXISTS printers_prints (
  printer_doc_id				bigint NOT NULL PRIMARY KEY,
  session_day_id				bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  printer_id					bigint DEFAULT NULL,
  printer_print_dtime			integer NOT NULL,
  printer_print_flags			integer DEFAULT 0,
  printer_print_document_name	character varying(765) DEFAULT NULL,
  printer_print_format			integer DEFAULT 0,
  printer_print_pages_count		integer DEFAULT NULL,
  printer_print_size   			bigint NOT NULL,
  printer_print_has_data		boolean DEFAULT NULL,
  printer_print_data			bytea DEFAULT NULL,
  printer_print_block_rules		text DEFAULT NULL
);

CREATE INDEX printers_prints_session_day_idx ON printers_prints (session_day_id);
CREATE INDEX printers_prints_dtime_idx ON printers_prints (printer_print_dtime);


--Table: clipboard_data
CREATE TABLE IF NOT EXISTS clipboard_data (
  clipboard_data_id 				bigserial NOT NULL PRIMARY KEY,
  clipboard_id						bigint NOT NULL,
  clipboard_data_data_chunk_off 	bigint NOT NULL,
  clipboard_data_data_chunk_size 	bigint NOT NULL,
  clipboard_data_data_size		 	bigint NOT NULL,
  clipboard_data_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX clipboard_data_file_idx ON clipboard_data (clipboard_id);
CREATE INDEX clipboard_data_chunk_idx ON clipboard_data (clipboard_id, clipboard_data_data_chunk_off);


--Table: clipboard
CREATE TABLE IF NOT EXISTS clipboard (
  clipboard_id     				bigint NOT NULL PRIMARY KEY,
  session_day_id				bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  clipboard_source_process_id	bigint DEFAULT NULL,
  clipboard_dtime   			integer NOT NULL,
  clipboard_copy   				boolean NOT NULL,
  clipboard_flags   			integer DEFAULT 0,
  clipboard_title   			character varying(765) DEFAULT NULL,
  clipboard_source_title   		character varying(765) DEFAULT NULL,
  clipboard_fname    			character varying(765) DEFAULT NULL,
  clipboard_source_fname    	character varying(765) DEFAULT NULL,
  clipboard_data_type   		integer DEFAULT 0,
  clipboard_data_size   		bigint NOT NULL,
  clipboard_data_info    		text DEFAULT NULL,
  clipboard_has_data			boolean DEFAULT NULL,
  clipboard_data    			bytea DEFAULT NULL,
  clipboard_block_rules			text DEFAULT NULL
);

CREATE INDEX clipboard_session_day_idx ON clipboard (session_day_id);
CREATE INDEX clipboard_dtime_idx ON clipboard (clipboard_dtime);
CREATE INDEX clipboard_id_day_idx ON clipboard (session_day_id, clipboard_id) WHERE session_day_id IS NOT NULL;
CREATE INDEX clipboard_data_type_idx ON clipboard (clipboard_data_type);


--Table: screenshots
CREATE TABLE IF NOT EXISTS screenshots (
  screenshots_id     		bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  window_caption    		character varying(765) DEFAULT NULL,
  browser_url    			character varying(765) DEFAULT NULL,
  screenshot_dtime   		integer NOT NULL,
  screenshot_flags   		integer DEFAULT 0,
  screenshot_thumb   		bytea DEFAULT NULL,
  screenshot_image			bytea DEFAULT NULL
);

CREATE INDEX screenshots_session_day_idx ON screenshots (session_day_id);
CREATE INDEX screenshots_dtime_idx ON screenshots (screenshot_dtime);
CREATE INDEX screenshots_id_day_idx ON screenshots (session_day_id, screenshots_id) WHERE session_day_id IS NOT NULL;


--Table: browsers
CREATE TABLE IF NOT EXISTS browsers (
  browser_id		bigint NOT NULL PRIMARY KEY,
  browser_name		character varying(127) NOT NULL
);

CREATE INDEX browsers_name_idx ON browsers (browser_name);


--Table: browsers_urls
CREATE TABLE IF NOT EXISTS browsers_urls (
  browser_url_id     		bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  browser_id				bigint DEFAULT NULL,
  web_category_chain_id		bigint DEFAULT NULL,
  browser_url_dtime   		integer NOT NULL,
  browser_url_url  			text DEFAULT NULL,
  browser_url_title   		character varying(765) DEFAULT NULL,
  browser_url_info			bytea DEFAULT NULL
);

CREATE INDEX browsers_urls_session_day_idx ON browsers_urls (session_day_id);
CREATE INDEX browsers_urls_dtime_idx ON browsers_urls (browser_url_dtime);
CREATE INDEX browsers_urls_id_day_idx ON browsers_urls (session_day_id, browser_url_id) WHERE session_day_id IS NOT NULL;
CREATE INDEX browsers_urls_web_category_chain_idx ON browsers_urls (web_category_chain_id);


--Table: keyboard_keys
CREATE TABLE IF NOT EXISTS keyboard_keys (
  keyboard_keys_id     			bigserial NOT NULL PRIMARY KEY,
  session_day_id				bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  keyboard_keys_dtime_start 	integer NOT NULL,
  keyboard_keys_dtime_end   	integer NOT NULL,
  keyboard_keys_flags   		integer DEFAULT 0,
  keyboard_keys_title   		character varying(765) DEFAULT NULL,
  keyboard_keys_count   		integer NOT NULL,
  keyboard_keys_size   			bigint NOT NULL,
  keyboard_keys_data   			bytea NOT NULL
);

CREATE INDEX keyboard_keys_session_day_idx ON keyboard_keys (session_day_id);
CREATE INDEX keyboard_keys_dtime_start_idx ON keyboard_keys (keyboard_keys_dtime_start);
CREATE INDEX keyboard_keys_dtime_end_idx ON keyboard_keys (keyboard_keys_dtime_end);
CREATE INDEX keyboard_keys_id_day_idx ON keyboard_keys (session_day_id, keyboard_keys_id) WHERE session_day_id IS NOT NULL;


--Table: devices
CREATE TABLE IF NOT EXISTS devices (
  device_id     			bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  device_dtime   			integer NOT NULL,
  device_flags   			integer DEFAULT 0,
  device_dvtype    			integer NOT NULL,
  device_phtype    			integer NOT NULL,
  device_dvstate   			integer NOT NULL,
  device_start_dtime    	integer DEFAULT NULL,
  device_stop_dtime     	integer DEFAULT NULL,
  device_devid     			character varying(255) DEFAULT NULL,
  device_identid  			character varying(255) DEFAULT NULL,
  device_vid       			integer DEFAULT 0,
  device_pid       			integer DEFAULT 0,
  device_manufc    			character varying(127) DEFAULT NULL,
  device_prodnm    			character varying(127) DEFAULT NULL,
  device_srln      			character varying(127) DEFAULT NULL,
  device_class     			character varying(127) DEFAULT NULL,
  device_block_rules		text DEFAULT NULL
);

CREATE INDEX devices_session_day_idx ON devices (session_day_id);
CREATE INDEX devices_dtime_idx ON devices (device_dtime);
CREATE INDEX device_id_day_idx ON devices (session_day_id, device_id) WHERE session_day_id IS NOT NULL;


--Table: wsindexer
CREATE TABLE IF NOT EXISTS wsindexer (
  wsindexer_id     			bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  wsindexer_dtime   		integer NOT NULL,
  wsindexer_flags   		integer DEFAULT 0,
  wsindexer_stype   		integer NOT NULL,
  wsindexer_fname    		character varying(765) DEFAULT NULL,
  wsindexer_fsize   		bigint DEFAULT 0,
  wsindexer_ftime    		bigint NOT NULL,
  wsindexer_hash     		character varying(64) NOT NULL,
  wsindexer_bank     		character varying(255) NOT NULL,
  wsindexer_idx      		character varying(255) NOT NULL,
  wsindexer_rules    		text DEFAULT NULL,
  wsindexer_property 		bytea DEFAULT NULL
);

CREATE INDEX wsindexer_session_day_idx ON wsindexer (session_day_id);
CREATE INDEX wsindexer_dtime_idx ON wsindexer (wsindexer_dtime);


--Table: ftp_files_data
CREATE TABLE IF NOT EXISTS ftp_files_data (
  ftp_file_data_id 				bigserial NOT NULL PRIMARY KEY,
  ftp_file_id					bigint NOT NULL,
  ftp_file_data_chunk_off 		bigint NOT NULL,
  ftp_file_data_chunk_size 		bigint NOT NULL,
  ftp_file_data_size			bigint NOT NULL,
  ftp_file_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX ftp_files_data_file_idx ON ftp_files_data (ftp_file_id);
CREATE INDEX ftp_file_data_chunk_idx ON ftp_files_data (ftp_file_id, ftp_file_data_chunk_off);


--Table: ftp_files
CREATE TABLE IF NOT EXISTS ftp_files (
  ftp_file_id      			bigint NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  ftp_file_host_address		character varying(40) DEFAULT NULL,
  ftp_file_host_port		integer DEFAULT NULL,
  ftp_file_dtime			integer NOT NULL,
  ftp_file_rcv				boolean NOT NULL,
  ftp_file_flags			integer DEFAULT 0,
  ftp_file_user				character varying(255) DEFAULT NULL,
  ftp_file_pass				character varying(255) DEFAULT NULL,
  ftp_file_path				character varying(765) DEFAULT NULL,
  ftp_file_fsize   			bigint DEFAULT NULL,
  ftp_file_has_data			boolean NOT NULL,
  ftp_file_data_path		character varying(127) DEFAULT NULL,
  ftp_file_block_rules		text DEFAULT NULL
);

CREATE INDEX ftp_session_day_idx ON ftp_files (session_day_id);
CREATE INDEX ftp_dtime_idx ON ftp_files (ftp_file_dtime);
CREATE INDEX ftp_files_id_day_idx ON ftp_files (session_day_id, ftp_file_id) WHERE session_day_id IS NOT NULL;


--Table: usb_files_data
CREATE TABLE IF NOT EXISTS usb_files_data (
  usb_file_data_id 				bigserial NOT NULL PRIMARY KEY,
  usb_file_id					bigint NOT NULL,
  usb_file_data_chunk_off 		bigint NOT NULL,
  usb_file_data_chunk_size 		bigint NOT NULL,
  usb_file_data_size 			bigint NOT NULL,
  usb_file_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX usb_files_data_file_idx ON usb_files_data (usb_file_id);
CREATE INDEX usb_file_data_chunk_idx ON usb_files_data (usb_file_id, usb_file_data_chunk_off);


--Table: usb_files
CREATE TABLE IF NOT EXISTS usb_files (
  usb_file_id     			bigint NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  usb_file_dtime   			integer NOT NULL,
  usb_file_flags   			integer DEFAULT 0,
  usb_file_devid    		character varying(255) DEFAULT NULL,
  usb_file_pathid    		character varying(255) DEFAULT NULL,
  usb_file_vid      		integer DEFAULT 0,
  usb_file_pid      		integer DEFAULT 0,
  usb_file_manufc    		character varying(127) DEFAULT NULL,
  usb_file_device    		character varying(127) DEFAULT NULL,
  usb_file_srln      		character varying(127) DEFAULT NULL,
  usb_file_overs   			boolean DEFAULT false,
  usb_file_overf   			boolean DEFAULT false,
  usb_file_overm   			boolean DEFAULT false,
  usb_file_fname   			character varying(765) DEFAULT NULL,
  usb_file_fsize   			bigint DEFAULT NULL,
  usb_file_has_data			boolean NOT NULL,
  usb_file_data_path		character varying(127) DEFAULT NULL,
  usb_file_block_rules		text DEFAULT NULL
);

CREATE INDEX usb_files_session_day_idx ON usb_files (session_day_id);
CREATE INDEX usb_files_dtime_idx ON usb_files (usb_file_dtime);
CREATE INDEX usb_files_id_day_idx ON usb_files (session_day_id, usb_file_id) WHERE session_day_id IS NOT NULL;


--Table: cddvd_files_data
CREATE TABLE IF NOT EXISTS cddvd_files_data (
  cddvd_file_data_id 			bigserial NOT NULL PRIMARY KEY,
  cddvd_file_id					bigint NOT NULL,
  cddvd_file_data_chunk_off 	bigint NOT NULL,
  cddvd_file_data_chunk_size 	bigint NOT NULL,
  cddvd_file_data_size		 	bigint NOT NULL,
  cddvd_file_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX cddvd_files_data_file_idx ON cddvd_files_data (cddvd_file_id);
CREATE INDEX cddvd_file_data_chunk_idx ON cddvd_files_data (cddvd_file_id, cddvd_file_data_chunk_off);


--Table: cddvd_files
CREATE TABLE IF NOT EXISTS cddvd_files (
  cddvd_file_id     		bigint NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  cddvd_file_dtime   		integer NOT NULL,
  cddvd_file_flags   		integer DEFAULT 0,
  cddvd_file_devid   		character varying(255) DEFAULT NULL,
  cddvd_file_pathid  		character varying(255) DEFAULT NULL,
  cddvd_file_manufc  		character varying(127) DEFAULT NULL,
  cddvd_file_device  		character varying(127) DEFAULT NULL,
  cddvd_file_srln    		character varying(127) DEFAULT NULL,
  cddvd_file_overs   		boolean DEFAULT false,
  cddvd_file_overf   		boolean DEFAULT false,
  cddvd_file_overm   		boolean DEFAULT false,
  cddvd_file_fname    		character varying(765) DEFAULT NULL,
  cddvd_file_fsize   		bigint DEFAULT NULL,
  cddvd_file_has_data		boolean NOT NULL,
  cddvd_file_data_path		character varying(127) DEFAULT NULL
);

CREATE INDEX cddvd_files_session_day_idx ON cddvd_files (session_day_id);
CREATE INDEX cddvd_files_dtime_idx ON cddvd_files (cddvd_file_dtime);
CREATE INDEX cddvd_files_id_day_idx ON cddvd_files (session_day_id, cddvd_file_id) WHERE session_day_id IS NOT NULL;


--Table: cloud_files_data
CREATE TABLE IF NOT EXISTS cloud_files_data (
  cloud_file_data_id 			bigserial NOT NULL PRIMARY KEY,
  cloud_file_id					bigint NOT NULL,
  cloud_file_data_chunk_off 	bigint NOT NULL,
  cloud_file_data_chunk_size 	bigint NOT NULL,
  cloud_file_data_size 			bigint NOT NULL,
  cloud_file_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX cloud_files_data_file_idx ON cloud_files_data (cloud_file_id);
CREATE INDEX cloud_file_data_chunk_idx ON cloud_files_data (cloud_file_id, cloud_file_data_chunk_off);


--Table: clouds
CREATE TABLE IF NOT EXISTS clouds (
  cloud_id			bigint NOT NULL PRIMARY KEY,
  cloud_name		character varying(127) NOT NULL
);

CREATE INDEX clouds_name_idx ON clouds (cloud_name);


--Table: cloud_files
CREATE TABLE IF NOT EXISTS cloud_files (
  cloud_file_id     		bigint NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  cloud_file_dtime   		integer NOT NULL,
  cloud_file_flags   		integer DEFAULT 0,
  cloud_file_cloud_id  		bigint NOT NULL,
  cloud_file_rcv       		boolean NOT NULL,
  cloud_file_overs   		boolean DEFAULT false,
  cloud_file_overf   		boolean DEFAULT false,
  cloud_file_overm   		boolean DEFAULT false,
  cloud_file_fname    		character varying(765) DEFAULT NULL,
  cloud_file_fsize   		bigint DEFAULT NULL,
  cloud_file_has_data		boolean NOT NULL,
  cloud_file_data_path		character varying(127) DEFAULT NULL,
  cloud_file_is_preview		boolean DEFAULT false
);

CREATE INDEX cloud_files_session_day_idx ON cloud_files (session_day_id);
CREATE INDEX cloud_files_dtime_idx ON cloud_files (cloud_file_dtime);
CREATE INDEX cloud_files_id_day_idx ON cloud_files (session_day_id, cloud_file_id) WHERE session_day_id IS NOT NULL;


--Table: shared_files_data
CREATE TABLE IF NOT EXISTS shared_files_data (
  shared_file_data_id 			bigserial NOT NULL PRIMARY KEY,
  shared_file_id				bigint NOT NULL,
  shared_file_data_chunk_off 	bigint NOT NULL,
  shared_file_data_chunk_size 	bigint NOT NULL,
  shared_file_data_size			bigint NOT NULL,
  shared_file_data_chunk		bytea DEFAULT NULL
);

CREATE INDEX shared_files_data_file_idx ON shared_files_data (shared_file_id);
CREATE INDEX shared_file_data_chunk_idx ON shared_files_data (shared_file_id, shared_file_data_chunk_off);


--Table: shared_files
CREATE TABLE IF NOT EXISTS shared_files (
  shared_file_id     		bigint NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  process_id				bigint DEFAULT NULL,
  shared_file_dtime   		integer NOT NULL,
  shared_file_flags   		integer DEFAULT 0,
  shared_file_overs   		boolean DEFAULT false,
  shared_file_overf   		boolean DEFAULT false,
  shared_file_overm   		boolean DEFAULT false,
  shared_file_fname    		character varying(765) DEFAULT NULL,
  shared_file_fsize   		bigint DEFAULT NULL,
  shared_file_has_data		boolean NOT NULL,
  shared_file_data_path		character varying(127) DEFAULT NULL
);

CREATE INDEX shared_files_session_day_idx ON shared_files (session_day_id);
CREATE INDEX shared_files_dtime_idx ON shared_files (shared_file_dtime);
CREATE INDEX shared_files_id_day_idx ON shared_files (session_day_id, shared_file_id) WHERE session_day_id IS NOT NULL;


--Table: web_spaces
CREATE TABLE IF NOT EXISTS web_spaces (
  web_space_id     		bigint NOT NULL PRIMARY KEY,
  web_space_name		character varying(255) NOT NULL,
  web_space_type		character varying(255) DEFAULT NULL
);

CREATE INDEX web_space_name_idx ON web_spaces (web_space_name);


--Table: web_files_keys
CREATE TABLE IF NOT EXISTS web_files_keys (
  web_file_key_id 		bigint NOT NULL PRIMARY KEY,
  web_file_key     		character varying(255) NOT NULL
);

CREATE INDEX web_files_keys_key_idx ON web_files_keys (web_file_key);


--Table: web_files_keys_dayconv_binds
CREATE TABLE IF NOT EXISTS web_files_keys_dayconv_binds (
  web_file_key_id 					bigint NOT NULL,
  session_dayconv_id 				bigint NOT NULL,

  PRIMARY KEY (web_file_key_id, session_dayconv_id)
);


--Table: web_files_data
CREATE TABLE IF NOT EXISTS web_files_data (
  web_file_data_id 				bigserial NOT NULL PRIMARY KEY,
  web_file_id					bigint NOT NULL,
  web_file_data_chunk_off 		bigint NOT NULL,
  web_file_data_chunk_size 		bigint NOT NULL,
  web_file_data_size 			bigint NOT NULL,
  web_file_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX web_file_data_file_idx ON web_files_data (web_file_id);
CREATE INDEX web_file_data_chunk_idx ON web_files_data (web_file_id, web_file_data_chunk_off);


--Table: web_files
CREATE TABLE IF NOT EXISTS web_files (
  web_file_id     				bigint NOT NULL PRIMARY KEY,
  session_day_id 				bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  web_file_key_id				bigint DEFAULT NULL,
  web_space_id					bigint DEFAULT NULL,
  web_file_dtime   				integer NOT NULL,
  web_file_rcv     				boolean DEFAULT NULL,
  web_file_user_account			character varying(255) DEFAULT NULL,
  web_file_sender				character varying(255) DEFAULT NULL,
  web_file_chat_users 			text DEFAULT NULL,
  web_file_fname   				character varying(765) DEFAULT NULL,
  web_file_fsize   				bigint DEFAULT 0,
  web_file_url   				text DEFAULT NULL,
  web_file_info    				text DEFAULT NULL,
  web_file_has_data				boolean NOT NULL,
  web_file_data_path			character varying(127) DEFAULT NULL
);

CREATE INDEX web_file_day_idx ON web_files (session_day_id);
CREATE INDEX web_file_dtime_idx ON web_files (web_file_dtime);
CREATE INDEX web_file_web_file_key_idx ON web_files (web_file_key_id);


--Table: web_files_dayconv_binds
CREATE TABLE IF NOT EXISTS web_files_dayconv_binds (
  web_files_dayconv_bind_id 	bigint NOT NULL PRIMARY KEY,
  web_file_id     				bigint NOT NULL,
  session_dayconv_id 			bigint NOT NULL
);

CREATE INDEX web_files_dayconv_bind_file_idx ON web_files_dayconv_binds (web_file_id);
CREATE INDEX web_files_dayconv_bind_dayconv_idx ON web_files_dayconv_binds (session_dayconv_id);


--Table: web_mails_keys
CREATE TABLE IF NOT EXISTS web_mails_keys (
  web_mail_key_id 		bigint NOT NULL PRIMARY KEY,
  web_mail_key			character varying(255) NOT NULL
);

CREATE INDEX web_mails_keys_key_idx ON web_mails_keys (web_mail_key);


--Table: web_files_keys_mails_keys_binds
CREATE TABLE IF NOT EXISTS web_files_keys_mails_keys_binds (
  web_file_key_id 					bigint NOT NULL,
  web_mail_key_id 					bigint NOT NULL,

  PRIMARY KEY (web_file_key_id, web_mail_key_id)
);


--Table: web_files_mails_keys_binds
CREATE TABLE IF NOT EXISTS web_files_mails_keys_binds (
  web_files_mail_key_bind_id 		bigint NOT NULL PRIMARY KEY,
  web_file_id     					bigint NOT NULL,
  web_mail_key_id 					bigint NOT NULL
);

CREATE INDEX web_files_mails_keys_bind_file_idx ON web_files_mails_keys_binds (web_file_id);
CREATE INDEX web_files_mails_keys_bind_mail_key_idx ON web_files_mails_keys_binds (web_mail_key_id);


--Table: web_mails
CREATE TABLE IF NOT EXISTS web_mails (
  web_mail_id     				bigserial NOT NULL PRIMARY KEY,
  session_day_id 				bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  web_space_id					bigint DEFAULT NULL,
  web_mail_key_id				bigint DEFAULT NULL,
  web_mail_dtime  				integer NOT NULL,
  web_mail_dtime_msg   			integer NOT NULL,
  web_mail_flags				integer DEFAULT 0,
  web_mail_rcv     				boolean DEFAULT NULL,
  web_mail_user_account			character varying(255) DEFAULT NULL,
  web_mail_from     			character varying(255) DEFAULT NULL,
  web_mail_to      				text DEFAULT NULL,
  web_mail_cc      				text DEFAULT NULL,
  web_mail_bcc     				text DEFAULT NULL,
  web_mail_subject    			text DEFAULT NULL,
  web_mail_body       			text DEFAULT NULL,
  web_mail_web_files_keys		text DEFAULT NULL,
  web_mail_info       			text DEFAULT NULL
);

CREATE INDEX web_mail_day_idx ON web_mails (session_day_id);
CREATE INDEX web_mail_key_idx ON web_mails (web_mail_key_id);
CREATE INDEX web_mail_dtime_idx ON web_mails (web_mail_dtime);
CREATE INDEX web_mail_dtime_msg_idx ON web_mails (web_mail_dtime_msg);


--Table: web_messages
CREATE TABLE IF NOT EXISTS web_messages (
  web_message_id     			bigserial NOT NULL PRIMARY KEY,
  session_dayconv_id			bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  web_message_dtime   			integer NOT NULL,
  web_message_dtime_msg   		integer NOT NULL,
  web_message_rcv       		boolean DEFAULT NULL,
  web_message_msgid     		character varying(255) DEFAULT NULL,
  web_message_user_account		character varying(255) DEFAULT NULL,
  web_message_sender     		character varying(255) DEFAULT NULL,
  web_message_chat_users  		text DEFAULT NULL,
  web_message_body       		text DEFAULT NULL,
  web_message_web_files_keys  	text DEFAULT NULL,
  web_message_info       		text DEFAULT NULL
);

CREATE INDEX web_message_dayconv_idx ON web_messages (session_dayconv_id);
CREATE INDEX web_message_dtime_idx ON web_messages (web_message_dtime);
CREATE INDEX web_message_dtime_msg_idx ON web_messages (web_message_dtime_msg);
CREATE INDEX web_message_id_day_idx ON web_messages (session_dayconv_id, web_message_id) WHERE session_dayconv_id IS NOT NULL;


--Table: conv_messages
CREATE TABLE IF NOT EXISTS conv_messages (
  conv_message_id     			bigserial NOT NULL PRIMARY KEY,
  session_dayconv_id 			bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  conv_message_dtime   			integer NOT NULL,
  conv_message_dtime_msg		integer NOT NULL,
  conv_message_msgid			character varying(255) DEFAULT NULL,
  conv_message_luser_id			character varying(255) DEFAULT NULL,
  conv_message_suser_id			character varying(255) DEFAULT NULL,
  conv_message_chat_users 		text DEFAULT NULL,
  conv_message_body    			text DEFAULT NULL,
  conv_message_web_files_keys  	text DEFAULT NULL,
  conv_message_info    			text DEFAULT NULL
);

CREATE INDEX conv_message_dayconv_idx ON conv_messages (session_dayconv_id);
CREATE INDEX conv_message_dtime_idx ON conv_messages (conv_message_dtime);
CREATE INDEX conv_message_dtime_msg_idx ON conv_messages (conv_message_dtime_msg);
CREATE INDEX conv_message_id_day_idx ON conv_messages (session_dayconv_id, conv_message_id) WHERE session_dayconv_id IS NOT NULL;


--Table: conv_files_data
CREATE TABLE IF NOT EXISTS conv_files_data (
  conv_file_data_id 			bigserial NOT NULL PRIMARY KEY,
  conv_file_id					bigint NOT NULL,
  conv_file_data_chunk_off 		bigint NOT NULL,
  conv_file_data_chunk_size 	bigint NOT NULL,
  conv_file_data_size 			bigint NOT NULL,
  conv_file_data_chunk			bytea DEFAULT NULL
);

CREATE INDEX conv_files_data_file_idx ON conv_files_data (conv_file_id);
CREATE INDEX conv_file_data_chunk_idx ON conv_files_data (conv_file_id, conv_file_data_chunk_off);


--Table: conv_files
CREATE TABLE IF NOT EXISTS conv_files (
  conv_file_id     				bigint NOT NULL PRIMARY KEY,
  session_dayconv_id 			bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  web_file_key_id				bigint DEFAULT NULL,
  conv_file_dtime   			integer NOT NULL,
  conv_file_dtime_msg  			integer NOT NULL,
  conv_file_luser_id			character varying(255) DEFAULT NULL,
  conv_file_suser_id			character varying(255) DEFAULT NULL,
  conv_file_chat_users 			text DEFAULT NULL,
  conv_file_fname   			character varying(765) DEFAULT NULL,
  conv_file_fsize   			bigint DEFAULT 0,
  conv_file_url					text DEFAULT NULL,
  conv_file_info    			text DEFAULT NULL,
  conv_file_has_data			boolean NOT NULL,
  conv_file_data_path			character varying(127) DEFAULT NULL,
  conv_file_block_rules			text DEFAULT NULL
);

CREATE INDEX conv_file_dayconv_idx ON conv_files (session_dayconv_id);
CREATE INDEX conv_file_dtime_idx ON conv_files (conv_file_dtime);
CREATE INDEX conv_file_dtime_msg_idx ON conv_files (conv_file_dtime_msg);
CREATE INDEX conv_file_id_day_idx ON conv_files (session_dayconv_id, conv_file_id) WHERE session_dayconv_id IS NOT NULL;
CREATE INDEX conv_file_web_file_key_idx ON conv_files (web_file_key_id);


--Table: conv_files_dayconv_binds
CREATE TABLE IF NOT EXISTS conv_files_dayconv_binds (
  conv_files_dayconv_bind_id 	bigint NOT NULL PRIMARY KEY,
  conv_file_id     				bigint NOT NULL,
  session_dayconv_id 			bigint NOT NULL
);

CREATE INDEX conv_files_dayconv_bind_file_idx ON conv_files_dayconv_binds (conv_file_id);
CREATE INDEX conv_files_dayconv_bind_dayconv_idx ON conv_files_dayconv_binds (session_dayconv_id);


--Table: conv_voices
CREATE TABLE IF NOT EXISTS conv_voices (
  conv_voice_id     			bigserial NOT NULL PRIMARY KEY,
  session_dayconv_id 			bigint NOT NULL,
  address_session_id			bigint NOT NULL,
  process_id					bigint DEFAULT NULL,
  conv_voice_dtime   			integer NOT NULL,
  conv_voice_dtime_msg 			integer NOT NULL,
  conv_voice_call_rcv			boolean DEFAULT NULL,
  conv_voice_luser_id			character varying(255) DEFAULT NULL,
  conv_voice_suser_id			character varying(255) DEFAULT NULL,
  conv_voice_chat_users 		text DEFAULT NULL,
  conv_voice_duration 			integer DEFAULT 0,
  conv_voice_info    			text DEFAULT NULL,
  conv_voice_size 		  		bigint NOT NULL,
  conv_voice_data   			bytea DEFAULT NULL
);

CREATE INDEX conv_voice_dayconv_idx ON conv_voices (session_dayconv_id);
CREATE INDEX conv_voice_dtime_idx ON conv_voices (conv_voice_dtime);
CREATE INDEX conv_voice_dtime_msg_idx ON conv_voices (conv_voice_dtime_msg);
CREATE INDEX conv_voice_id_day_idx ON conv_voices (session_dayconv_id, conv_voice_id) WHERE session_dayconv_id IS NOT NULL;


--Table: files_audit
CREATE TABLE IF NOT EXISTS files_audit (
  files_audit_id                bigserial NOT NULL PRIMARY KEY,
  session_day_id                bigint NOT NULL,
  address_session_id            bigint NOT NULL,
  process_id                    bigint DEFAULT NULL,
  event_type                    integer NOT NULL,
  event_time_utc                integer NOT NULL,
  event_time_raw                bigint NOT NULL,
  event_file_name_from          text DEFAULT NULL,
  event_file_name_to            text DEFAULT NULL,
  event_file_size_from          bigint NOT NULL,
  event_file_size_to            bigint NOT NULL,
  event_file_access_rights_from integer DEFAULT 0,
  event_file_access_rights_to   integer DEFAULT 0
);

CREATE INDEX files_audit_session_day_idx ON files_audit (session_day_id);
CREATE INDEX files_audit_id_day_idx ON files_audit (session_day_id, files_audit_id) WHERE session_day_id IS NOT NULL;


--Table: webcam
CREATE TABLE IF NOT EXISTS webcam (
  webcam_id     			bigserial NOT NULL PRIMARY KEY,
  session_day_id			bigint NOT NULL,
  address_session_id		bigint NOT NULL,
  webcam_dtime   			integer NOT NULL,
  webcam_flags   			integer DEFAULT 0,
  webcam_thumb   			bytea DEFAULT NULL,
  webcam_image				bytea DEFAULT NULL,
  webcam_face_fp_ver		integer DEFAULT 0,
  webcam_face_fp_data		bytea DEFAULT NULL,
  webcam_face_opresult		integer DEFAULT 0,
  webcam_face_identify_sids	text DEFAULT NULL
);


CREATE INDEX webcam_session_day_idx ON webcam (session_day_id);
CREATE INDEX webcam_dtime_idx ON webcam (webcam_dtime);
CREATE INDEX webcam_id_day_idx ON webcam (session_day_id, webcam_id) WHERE session_day_id IS NOT NULL;
