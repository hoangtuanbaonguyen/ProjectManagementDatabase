CREATE TABLE accounts (
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	username             TEXT NOT NULL    ,
	password             TEXT NOT NULL    ,
	first_name           TEXT NOT NULL    ,
	last_name            TEXT NOT NULL    ,
	email                TEXT NOT NULL    ,
	mobile_number        NUMERIC     ,
	"type"               TEXT  DEFAULT 'user'   ,
	created_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	is_active            NUMERIC NOT NULL DEFAULT 1   ,
	updated_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	CONSTRAINT unq_account_email UNIQUE ( email ),
	CONSTRAINT unq_account_username UNIQUE ( username ),
	CHECK (  ("type" in ('admin', 'user')) ),
	CHECK (  ("is_active" in (0, 1)) )
 );

CREATE TABLE projects (
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	owner_id             INTEGER NOT NULL    ,
	name                 TEXT NOT NULL    ,
	description          TEXT     ,
	start_date           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	end_date             NUMERIC     ,
	"type"               TEXT NOT NULL DEFAULT 'public'   ,
	is_active            NUMERIC NOT NULL DEFAULT 1   ,
	FOREIGN KEY ( owner_id ) REFERENCES accounts( id )  ,
	CHECK (  ( "type" in ('public', 'private')) ),
	CHECK (  ("is_active" in (0, 1)) )
 );

CREATE TABLE project_views (
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	project_id           INTEGER NOT NULL    ,
	title                TEXT NOT NULL    ,
	is_active            NUMERIC NOT NULL DEFAULT 1   ,
	FOREIGN KEY ( project_id ) REFERENCES projects( id ) ON DELETE CASCADE ,
	CHECK (  "is_active" in (0, 1) )
 );

CREATE TABLE tasks (
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	view_id              INTEGER NOT NULL    ,
	title                TEXT NOT NULL    ,
	description          TEXT     ,
	milestone            TEXT     ,
	start_date           NUMERIC     ,
	end_date             NUMERIC     ,
	status               TEXT NOT NULL DEFAULT 'todo'   ,
	is_active            NUMERIC NOT NULL DEFAULT 1   ,
	updated_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	FOREIGN KEY ( view_id ) REFERENCES project_views( id ) ON DELETE CASCADE ,
	CHECK (  ("status" in ('todo', 'in progress', 'done')) )
 );

CREATE TABLE assignments (
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	account_id           INTEGER NOT NULL    ,
	task_id              INTEGER NOT NULL    ,
	"type"               TEXT NOT NULL    ,
	assigned_at          NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	FOREIGN KEY ( account_id ) REFERENCES accounts( id )  ,
	FOREIGN KEY ( task_id ) REFERENCES tasks( id ) ON DELETE CASCADE ,
	CHECK (  ("type" in ('assignee', 'reviewer')) )
 );

CREATE TABLE task_comments (
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	account_id           INTEGER NOT NULL    ,
	task_id              INTEGER NOT NULL    ,
	description          TEXT     ,
	comment_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	FOREIGN KEY ( account_id ) REFERENCES accounts( id )  ,
	FOREIGN KEY ( task_id ) REFERENCES tasks( id ) ON DELETE CASCADE
 );
