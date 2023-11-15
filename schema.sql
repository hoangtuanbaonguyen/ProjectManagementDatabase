CREATE TABLE accounts ( 
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	created_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	username             TEXT NOT NULL    ,
	password             TEXT NOT NULL    ,
	last_name            TEXT NOT NULL    ,
	first_name           TEXT NOT NULL    ,
	email                TEXT NOT NULL    ,
	mobile_number        NUMERIC     ,
	"type"               TEXT  DEFAULT 'user'   ,
	updated_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	is_active            NUMERIC NOT NULL DEFAULT 1   ,
	CONSTRAINT unq_account_email UNIQUE ( email ),
	CONSTRAINT unq_account_username UNIQUE ( username ),
	CHECK (  ("type" in ('admin', 'user')) ),
	CHECK (  ("is_active" in (0, 1)) )
 );

CREATE TABLE projects ( 
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	owner_id             INTEGER NOT NULL    ,
	sponsor_id           INTEGER NOT NULL    ,
	description          TEXT     ,
	end_date             NUMERIC     ,
	is_active            NUMERIC NOT NULL DEFAULT 1   ,
	name                 TEXT NOT NULL    ,
	start_date           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	"type"               TEXT NOT NULL DEFAULT 'public'   ,
	FOREIGN KEY ( owner_id ) REFERENCES accounts( id )  ,
	FOREIGN KEY ( sponsor_id ) REFERENCES accounts( id )  ,
	CHECK (  ( "type" in ('public', 'private')) ),
	CHECK (  ("is_active" in (0, 1)) )
 );

CREATE TABLE segments ( 
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	project_id           INTEGER NOT NULL    ,
	title                TEXT NOT NULL    ,
	description          TEXT     ,
	FOREIGN KEY ( project_id ) REFERENCES projects( id ) ON DELETE CASCADE 
 );

CREATE TABLE tasks ( 
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	segment_id           INTEGER NOT NULL    ,
	title                TEXT NOT NULL    ,
	description          TEXT     ,
	start_at             NUMERIC     ,
	end_at               NUMERIC     ,
	milestone            TEXT     ,
	status               TEXT NOT NULL DEFAULT 'todo'   ,
	updated_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	is_active            NUMERIC NOT NULL DEFAULT 1   ,
	FOREIGN KEY ( segment_id ) REFERENCES segments( id )  ,
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

CREATE TABLE project_views ( 
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	project_id           INTEGER NOT NULL    ,
	title                TEXT NOT NULL    ,
	"type"               TEXT NOT NULL DEFAULT 'list'   ,
	FOREIGN KEY ( project_id ) REFERENCES projects( id ) ON DELETE CASCADE ,
	CHECK (  "is_active" in (0, 1) ),
	CHECK ( "type" in ('list', 'calendar') )
 );

CREATE TABLE task_comments ( 
	id                   INTEGER NOT NULL  PRIMARY KEY  ,
	task_id              INTEGER NOT NULL    ,
	account_id           INTEGER NOT NULL    ,
	content              TEXT NOT NULL    ,
	comment_at           NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP   ,
	FOREIGN KEY ( account_id ) REFERENCES accounts( id )  ,
	FOREIGN KEY ( task_id ) REFERENCES tasks( id ) ON DELETE CASCADE 
 );
