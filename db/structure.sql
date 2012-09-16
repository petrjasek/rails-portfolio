CREATE TABLE "images" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "caption" varchar(255), "imageable_id_id" integer, "imageable_id_type" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "file_file_name" varchar(255), "file_content_type" varchar(255), "file_file_size" integer, "file_updated_at" datetime);
CREATE TABLE "items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "teaser" varchar(255), "lead" text, "content" text, "dateline" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "projects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "teaser" varchar(255), "lead" text, "content" text, "authors" varchar(255), "collaborators" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120909093025');

INSERT INTO schema_migrations (version) VALUES ('20120916090659');