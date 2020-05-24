CREATE TABLE "User" (
	"user_id" serial NOT NULL,
	"user_name" varchar(512) NOT NULL,
	"user_first_name" varchar(255) NOT NULL,
	"user_password" varchar NOT NULL DEFAULT 'false',
	"user_last_name" varchar(255) NOT NULL,
	"user_avatar" TEXT,
	"user_gender" varchar(10),
	"user_email" varchar(255) NOT NULL,
	"user_email_verified" BOOLEAN NOT NULL DEFAULT 'false',
	"user_mobile" bigint NOT NULL,
	"user_mobile_verified" BOOLEAN NOT NULL DEFAULT 'false',
	"user_birthday" DATE NOT NULL,
	"user_biography" TEXT,
	"user_active_status" BOOLEAN NOT NULL DEFAULT 'false',
	"user_time_zone" timestamp with time zone,
	CONSTRAINT "User_pk" PRIMARY KEY ("user_id")
) WITH (
  OIDS=FALSE
);

CREATE TABLE "Organization" (
	"organization_id" serial NOT NULL,
	"organization_name" varchar(255) NOT NULL UNIQUE,
	"organization_description" varchar(1000) NOT NULL,
	"organization_created_at" timestamp with time zone NOT NULL,
	"organization_updated_at" timestamp with time zone NOT NULL,
	"organization_logo" TEXT NOT NULL,
	"organization_website" TEXT NOT NULL,
	"organization_type" varchar(255) NOT NULL DEFAULT 'private',
	"organization_size" int,
	CONSTRAINT "Organization_pk" PRIMARY KEY ("organization_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Sub_Organization" (
	"sub_organization_id" serial NOT NULL,
	"sub_organization_name" varchar(255) NOT NULL,
	"organization_id" serial NOT NULL,
	"sub_organization_description" varchar(1000) NOT NULL,
	"sub_organization_created_at" timestamp with time zone NOT NULL,
	"sub_organization_updated_at" timestamp with time zone NOT NULL,
	"sub_organization_logo" TEXT NOT NULL,
	"sub_organization_website" TEXT NOT NULL,
	"sub_organization_type" varchar(255) NOT NULL,
	"sub_organization_size" int,
	CONSTRAINT "Sub_Organization_pk" PRIMARY KEY ("sub_organization_id")
) WITH (
  OIDS=FALSE
);


CREATE TABLE "Role" (
	"role_id" serial NOT NULL UNIQUE,
	"role_name" varchar(255) NOT NULL,
	CONSTRAINT "Role_pk" PRIMARY KEY ("role_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Assigned_Role" (
	"assigned_role_id" serial NOT NULL UNIQUE,
	"user_id" serial NOT NULL,
	"role_id" serial NOT NULL,
	"organization_id" serial,
	"sub_organization_id" serial,
	CONSTRAINT "Assigned_Role_pk" PRIMARY KEY ("assigned_role_id")
) WITH (
  OIDS=FALSE
);


ALTER TABLE "Sub_Organization" ADD CONSTRAINT "Sub_Organization_fk0" FOREIGN KEY ("organization_id") REFERENCES "Organization"("organization_id") ON DELETE CASCADE;
ALTER TABLE "Assigned_Role" ADD CONSTRAINT "Assigned_Role_fk0" FOREIGN KEY ("user_id") REFERENCES "User"("user_id");
ALTER TABLE "Assigned_Role" ADD CONSTRAINT "Assigned_Role_fk1" FOREIGN KEY ("role_id") REFERENCES "Role"("role_id");
ALTER TABLE "Assigned_Role" ADD CONSTRAINT "Assigned_Role_fk2" FOREIGN KEY ("organization_id") REFERENCES "Organization"("organization_id");
ALTER TABLE "Assigned_Role" ADD CONSTRAINT "Assigned_Role_fk3" FOREIGN KEY ("sub_organization_id") REFERENCES "Sub_Organization"("sub_organization_id");

