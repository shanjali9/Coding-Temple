CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "service history" (
  "service_history_id" SERIAL,
  "mechanic_id" INTEGER,
  "vin_number" INTEGER,
  "service_ticket_id" INTEGER,
  PRIMARY KEY ("service_history_id")
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "customer_id" INTEGER,
  "salesperson_id" INTEGER,
  "invoice_date" DATE,
  "car_price" NUMERIC(8,2),
  "invoice_total_cost" NUMERIC(8,2),
  "total_cost_service" NUMERIC(8,2),
  PRIMARY KEY ("invoice_id")
);

CREATE TABLE "parts_inventory" (
  "part_number" SERIAL,
  "part_cost" NUMERIC(6,2),
  "part_name" VARCHAR(100),
  PRIMARY KEY ("part_number")
);

CREATE TABLE "service_ticket" (
  "service_ticket_id" SERIAL,
  "vin_number" INTEGER,
  "part_number" INTEGER,
  "service_date" DATE,
  "part_cost" NUMERIC(8,2),
  "labor_cost" NUMERIC(8,2),
  "total_cost_service" NUMERIC(8,2),
  "mechanic_id" INTEGER,
  PRIMARY KEY ("service_ticket_id")
);

CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("salesperson_id")
);

CREATE TABLE "car" (
  "vin_number" SERIAL,
  "salesperson_id" INTEGER,
  "invoice_id" INTEGER,
  "customer_id" INTEGER,
  "car_price" NUMERIC(8,2),
  PRIMARY KEY ("vin_number")
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("mechanic_id")
);