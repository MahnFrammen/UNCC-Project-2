-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/2kx2dK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Contacts" (
    "contact_id" (int64)   NOT NULL,
    "first_name" (object)   NOT NULL,
    "last_name" (object)   NOT NULL,
    "email" (object)   NOT NULL
);

CREATE TABLE "Category" (
    "category_id" (object)   NOT NULL,
    "category" (object)   NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" (float64)   NOT NULL,
    "contact_id" (float64)   NOT NULL,
    "company_name" (object)   NOT NULL,
    "description" (object)   NOT NULL,
    "goal" (float64)   NOT NULL,
    "pledged" (float64)   NOT NULL,
    "outcome" (object)   NOT NULL,
    "backers_count" (object)   NOT NULL,
    "country" (object)   NOT NULL,
    "currency" (object)   NOT NULL,
    "launched_date" (float64)   NOT NULL,
    "end_date" (float64)   NOT NULL,
    "category_id" (float64)   NOT NULL,
    "subcategory_id" (float64)   NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" (int64)   NOT NULL,
    "subcategory" (object)   NOT NULL
);

ALTER TABLE "Contacts" ADD CONSTRAINT "fk_Contacts_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

