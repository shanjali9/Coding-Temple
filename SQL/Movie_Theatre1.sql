CREATE TABLE "customer" (
  "customer_id" SERIAL
);

CREATE TABLE "movies" (
  "movie_name" VARCHAR(100),
  "room_id" SERIAL,
  "movie_id" SERIAL,
  "date_time" TIMESTAMP,
  "ticket_id" SERIAL
);

CREATE TABLE "concessions" (
  "snack_name" VARCHAR(40),
  "snack_id" SERIAL
);

CREATE TABLE "tickets" (
  "movie_name" VARCHAR(100),
  "date_time" TIMESTAMP,
  "room_id" SERIAL,
  "movie_id" SERIAL,
  "ticket_id" SERIAL
);