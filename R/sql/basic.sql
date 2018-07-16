/* Grant permissions to all tables on all databases in public schema  */
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO mitchell_lisle;

/* Create TABLE Syntax */
CREATE TABLE properties_pviews (
key character varying(100),
value integer,
date date
);
