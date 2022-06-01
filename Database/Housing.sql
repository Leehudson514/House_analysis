CREATE TABLE "rent" (
  "zipcode" int PRIMARY KEY,
  "city" varchar,
  "state" varchar UNIQUE,
  "date" timestamp,
  "rent" int
);

CREATE TABLE "geo" (
  "zipcode" int PRIMARY KEY,
  "city" varchar,
  "latitude" varchar,
  "longitude" varchar
);

CREATE TABLE "homevalue" (
  "zipcode" int PRIMARY KEY,
  "city" varchar,
  "county" varchar,
  "state" varchar UNIQUE,
  "value" int,
  "date" timestamp
);

CREATE TABLE "income_population" (
  "state" varchar UNIQUE,
  "income" int,
  "population" int,
  "date" timestamp
);

ALTER TABLE "geo" ADD FOREIGN KEY ("zipcode") REFERENCES "rent" ("zipcode");

ALTER TABLE "homevalue" ADD FOREIGN KEY ("zipcode") REFERENCES "geo" ("zipcode");

ALTER TABLE "homevalue" ADD FOREIGN KEY ("date") REFERENCES "rent" ("date");

ALTER TABLE "rent" ADD FOREIGN KEY ("zipcode") REFERENCES "homevalue" ("zipcode");

ALTER TABLE "homevalue" ADD FOREIGN KEY ("state") REFERENCES "income_population" ("state");

ALTER TABLE "rent" ADD FOREIGN KEY ("state") REFERENCES "income_population" ("state");

ALTER TABLE "homevalue" ADD FOREIGN KEY ("date") REFERENCES "income_population" ("date");

ALTER TABLE "rent" ADD FOREIGN KEY ("date") REFERENCES "income_population" ("date");
