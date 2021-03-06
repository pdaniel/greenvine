DROP ALL OBJECTS;

CREATE SCHEMA "DBO";
CREATE SCHEMA "TEST";

create table "GREENVINE_DB"."DBO"."TBL_CONTRACT" (
	"FK_EMPLOYEE_ID" INTEGER  not null,
	"TERMS" VARCHAR (4000) not null
);

create table "GREENVINE_DB"."DBO"."TBL_DESK" (
	"CODE" VARCHAR (5) not null,
	"DESK_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_DESK_EMPLOYEE" (
	"FK_DESK_ID" INTEGER  not null,
	"FK_EMPLOYEE_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE" (
	"DAILY_WORKING_HOURS" DECIMAL (4, 1) not null,
	"EMAIL" VARCHAR (255) not null,
	"EMPLOYEE_ID" INTEGER  not null,
	"FIRST_NAME" VARCHAR (255) not null,
	"FK_MANAGER_ID" INTEGER ,
	"FK_USER_ID" INTEGER  not null,
	"HOURLY_COST" DECIMAL (19, 4) not null,
	"LAST_NAME" VARCHAR (255) not null
);

create table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE_MENTOR" (
	"EMPLOYEE_MENTOR_ID" INTEGER  not null,
	"MENTOREE_ID" INTEGER  not null,
	"MENTOR_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_GROUP" (
	"GROUPNAME" VARCHAR (255) not null,
	"GROUP_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_GROUP_USER" (
	"FK_GROUP_ID" INTEGER  not null,
	"FK_USER_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_STAND" (
	"DESCRIPTION" VARCHAR (4000) not null,
	"STAND_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_STAND_UMBRELLA" (
	"FK_STAND_ID" INTEGER  not null,
	"FK_UMBRELLA_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_UMBRELLA" (
	"COLOUR" VARCHAR (4000) not null,
	"FK_EMPLOYEE_ID" INTEGER  not null,
	"UMBRELLA_ID" INTEGER  not null
);

create table "GREENVINE_DB"."DBO"."TBL_USER" (
	"PASSWORD" VARCHAR (255) not null,
	"USERNAME" VARCHAR (255) not null,
	"USER_ID" INTEGER  not null
);

create table "GREENVINE_DB"."TEST"."TBL_ACTIVITY" (
	"ACTIVITY_ID" INTEGER  not null,
	"DESCRIPTION" VARCHAR (255) not null,
	"FK_DATE" DATE  not null,
	"FK_EMPLOYEE_ID" INTEGER  not null,
	"HOURS" DECIMAL (4, 1) not null
);

create table "GREENVINE_DB"."TEST"."TBL_ADDRESS" (
	"ADDRESS_ID" INTEGER  not null,
	"HOUSE_NUMBER" CHARACTER (5) not null,
	"POST_CODE" CHARACTER (10) not null,
	"STREET_NAME" VARCHAR (100) not null
);

create table "GREENVINE_DB"."TEST"."TBL_BUGS" (
	"BUG_ID" INTEGER  not null,
	"DESCRIPTION" VARCHAR (4000) not null,
	"OPEN" BOOLEAN  not null,
	"OWNER" VARCHAR (50) not null,
	"REPORTER" VARCHAR (50) not null,
	"TITLE" VARCHAR (255) not null
);

create table "GREENVINE_DB"."TEST"."TBL_CONSIGNMENT" (
	"CONSIGNMENT_DATE" DATE  not null,
	"CONSIGNMENT_ID" INTEGER  not null,
	"FK_ADDRESS_ID" INTEGER  not null,
	"FK_FIRST_NAME" VARCHAR (50) not null,
	"FK_LAST_NAME" VARCHAR (50) not null
);

create table "GREENVINE_DB"."TEST"."TBL_CUSTOMER" (
	"FK_FIRST_NAME" VARCHAR (50) not null,
	"FK_LAST_NAME" VARCHAR (50) not null,
	"LOYALTY_POINTS" INTEGER  not null
);

create table "GREENVINE_DB"."TEST"."TBL_FRIEND" (
	"REQUESTEE_ID" INTEGER  not null,
	"REQUESTER_ID" INTEGER  not null
);

create table "GREENVINE_DB"."TEST"."TBL_PARKING_PERMIT" (
	"DATE" DATE  not null,
	"FK_REG_NUMBER" CHARACTER (7) not null,
	"VALUE" DECIMAL (4, 1) not null
);

create table "GREENVINE_DB"."TEST"."TBL_PARKING_PERMIT_PAYMENT" (
	"FK_PARKING_PERMIT_DATE" DATE  not null,
	"FK_REG_NUMBER" CHARACTER (7) not null,
	"PAYMENT_DATE" TIMESTAMP  not null
);

create table "GREENVINE_DB"."TEST"."TBL_PASSPORT" (
	"EXPIRY_DATE" DATE  not null,
	"FK_FIRST_NAME" VARCHAR (50) not null,
	"FK_LAST_NAME" VARCHAR (50) not null,
	"PASSPORT_NR" CHARACTER (7) not null
);

create table "GREENVINE_DB"."TEST"."TBL_PERSON" (
	"BIRTHDAY" DATE  not null,
	"FIRST_NAME" VARCHAR (50) not null,
	"LAST_NAME" VARCHAR (50) not null
);

create table "GREENVINE_DB"."TEST"."TBL_PROFILE" (
	"FK_USERNAME" VARCHAR (50) not null,
	"PROFILE_ID" INTEGER  not null,
	"SCREEN_NAME" VARCHAR (100) not null
);

create table "GREENVINE_DB"."TEST"."TBL_SPOUSE" (
	"SPOUSE_FROM_ID" INTEGER  not null,
	"SPOUSE_TO_ID" INTEGER  not null
);

create table "GREENVINE_DB"."TEST"."TBL_TIMESHEET" (
	"DATE" DATE  not null,
	"EXPECTED_HOURS" DECIMAL (4, 1) not null,
	"FK_EMPLOYEE_ID" INTEGER  not null
);

create table "GREENVINE_DB"."TEST"."TBL_TYPES" (
	"TYPE_1" INTEGER  not null,
	"TYPE_10" TIME  not null,
	"TYPE_12" DATE  not null,
	"TYPE_13" TIMESTAMP  not null,
	"TYPE_14" VARBINARY  not null,
	"TYPE_16" VARCHAR (20) not null,
	"TYPE_17" CHARACTER (20) not null,
	"TYPE_18" BLOB  not null,
	"TYPE_19" CLOB  not null,
	"TYPE_2" BOOLEAN  not null,
	"TYPE_20" CHARACTER (20) not null,
	"TYPE_3" TINYINT  not null,
	"TYPE_4" SMALLINT  not null,
	"TYPE_5" BIGINT  not null,
	"TYPE_6" BIGINT  not null,
	"TYPE_7" DECIMAL (10, 2) not null,
	"TYPE_8" DOUBLE (17) not null,
	"TYPE_9" REAL (7) not null
);

create table "GREENVINE_DB"."TEST"."TBL_USER" (
	"PASSWORD" VARCHAR (50) not null,
	"USERNAME" VARCHAR (50) not null
);

create table "GREENVINE_DB"."TEST"."TBL_VEHICLE" (
	"MODEL" VARCHAR (400) not null,
	"REG_NUMBER" CHARACTER (7) not null
);

alter table "GREENVINE_DB"."DBO"."TBL_CONTRACT"
    add constraint "DBO"."PK_CONTRACT" primary key ("FK_EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_DESK"
    add constraint "DBO"."PK_DESK" primary key ("DESK_ID");

alter table "GREENVINE_DB"."DBO"."TBL_DESK_EMPLOYEE"
    add constraint "DBO"."PK_DESK_EMPLOYEE" primary key ("FK_DESK_ID","FK_EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"
    add constraint "DBO"."PK_EMPLOYEE" primary key ("EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE_MENTOR"
    add constraint "DBO"."PK_EMPLOYEE_MENTOR" primary key ("EMPLOYEE_MENTOR_ID");

alter table "GREENVINE_DB"."DBO"."TBL_GROUP"
    add constraint "DBO"."PK_GROUP" primary key ("GROUP_ID");

alter table "GREENVINE_DB"."DBO"."TBL_GROUP_USER"
    add constraint "DBO"."PK_GROUP_USER" primary key ("FK_GROUP_ID","FK_USER_ID");

alter table "GREENVINE_DB"."DBO"."TBL_STAND"
    add constraint "DBO"."PK_STAND" primary key ("STAND_ID");

alter table "GREENVINE_DB"."DBO"."TBL_STAND_UMBRELLA"
    add constraint "DBO"."PK_STAND_UMBRELLA" primary key ("FK_STAND_ID","FK_UMBRELLA_ID");

alter table "GREENVINE_DB"."DBO"."TBL_UMBRELLA"
    add constraint "DBO"."PK_UMBRELLA" primary key ("UMBRELLA_ID");

alter table "GREENVINE_DB"."DBO"."TBL_USER"
    add constraint "DBO"."PK_USER" primary key ("USER_ID");

alter table "GREENVINE_DB"."TEST"."TBL_ACTIVITY"
    add constraint "TEST"."PK_ACTIVITY" primary key ("ACTIVITY_ID");

alter table "GREENVINE_DB"."TEST"."TBL_ADDRESS"
    add constraint "TEST"."PK_ADDRESS" primary key ("ADDRESS_ID");

alter table "GREENVINE_DB"."TEST"."TBL_BUGS"
    add constraint "TEST"."PK_BUGS" primary key ("BUG_ID");

alter table "GREENVINE_DB"."TEST"."TBL_CONSIGNMENT"
    add constraint "TEST"."PK_CONSIGNMENT" primary key ("CONSIGNMENT_ID");

alter table "GREENVINE_DB"."TEST"."TBL_CUSTOMER"
    add constraint "TEST"."PK_CUSTOMER" primary key ("FK_FIRST_NAME","FK_LAST_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_FRIEND"
    add constraint "TEST"."PK_FRIEND" primary key ("REQUESTEE_ID","REQUESTER_ID");

alter table "GREENVINE_DB"."TEST"."TBL_PARKING_PERMIT"
    add constraint "TEST"."PK_PARKING_PERMIT" primary key ("DATE","FK_REG_NUMBER");

alter table "GREENVINE_DB"."TEST"."TBL_PARKING_PERMIT_PAYMENT"
    add constraint "TEST"."PK_PARKING_PERMIT_PAYMENT" primary key ("FK_PARKING_PERMIT_DATE","FK_REG_NUMBER");

alter table "GREENVINE_DB"."TEST"."TBL_PASSPORT"
    add constraint "TEST"."PK_PASSPORT" primary key ("PASSPORT_NR");

alter table "GREENVINE_DB"."TEST"."TBL_PERSON"
    add constraint "TEST"."PK_PERSON" primary key ("FIRST_NAME","LAST_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_PROFILE"
    add constraint "TEST"."PK_PROFILE" primary key ("PROFILE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_SPOUSE"
    add constraint "TEST"."PK_SPOUSE" primary key ("SPOUSE_FROM_ID","SPOUSE_TO_ID");

alter table "GREENVINE_DB"."TEST"."TBL_TIMESHEET"
    add constraint "TEST"."PK_TIMESHEET" primary key ("DATE","FK_EMPLOYEE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_TYPES"
    add constraint "TEST"."CONSTRAINT_C" primary key ("TYPE_6");

alter table "GREENVINE_DB"."TEST"."TBL_USER"
    add constraint "TEST"."PK_USER" primary key ("USERNAME");

alter table "GREENVINE_DB"."TEST"."TBL_VEHICLE"
    add constraint "TEST"."PK_VEHICLE" primary key ("REG_NUMBER");

alter table "GREENVINE_DB"."DBO"."TBL_DESK_EMPLOYEE"
    add constraint "DBO"."UK_DESK_EMPLOYEE1_UNIQUE" unique ("FK_DESK_ID");

alter table "GREENVINE_DB"."DBO"."TBL_DESK_EMPLOYEE"
    add constraint "DBO"."UK_DESK_EMPLOYEE2_UNIQUE" unique ("FK_EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"
    add constraint "DBO"."UK_EMPLOYEE1_UNIQUE" unique ("EMAIL");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"
    add constraint "DBO"."UK_EMPLOYEE2_UNIQUE" unique ("FIRST_NAME","LAST_NAME");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"
    add constraint "DBO"."UK_EMPLOYEE3_UNIQUE" unique ("FK_USER_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE_MENTOR"
    add constraint "DBO"."UK_EMPLOYEE_MENTOR1_UNIQUE" unique ("MENTOREE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_GROUP"
    add constraint "DBO"."UK_GROUP1_UNIQUE" unique ("GROUPNAME");

alter table "GREENVINE_DB"."DBO"."TBL_STAND_UMBRELLA"
    add constraint "DBO"."UK_STAND_UMBRELLA1_UNIQUE" unique ("FK_UMBRELLA_ID");

alter table "GREENVINE_DB"."DBO"."TBL_USER"
    add constraint "DBO"."UK_USER1_UNIQUE" unique ("USERNAME");

alter table "GREENVINE_DB"."TEST"."TBL_ADDRESS"
    add constraint "TEST"."UK_ADDRESS1_UNIQUE" unique ("HOUSE_NUMBER","STREET_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_CONSIGNMENT"
    add constraint "TEST"."UK_CONSIGNMENT1_UNIQUE" unique ("CONSIGNMENT_DATE","FK_FIRST_NAME","FK_LAST_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_PASSPORT"
    add constraint "TEST"."UK_PASSPORT1_UNIQUE" unique ("FK_FIRST_NAME","FK_LAST_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_PROFILE"
    add constraint "TEST"."UK_PROFILE1_UNIQUE" unique ("FK_USERNAME");

alter table "GREENVINE_DB"."TEST"."TBL_SPOUSE"
    add constraint "TEST"."UK_SPOUSE1_UNIQUE" unique ("SPOUSE_FROM_ID");

alter table "GREENVINE_DB"."TEST"."TBL_SPOUSE"
    add constraint "TEST"."UK_SPOUSE2_UNIQUE" unique ("SPOUSE_TO_ID");

alter table "GREENVINE_DB"."DBO"."TBL_CONTRACT"
    add constraint "DBO"."FK_CONTRACT_EMPLOYEE" foreign key ("FK_EMPLOYEE_ID") references "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"("EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_DESK_EMPLOYEE"
    add constraint "DBO"."FK_DESK_EMPLOYEE_DESK" foreign key ("FK_DESK_ID") references "GREENVINE_DB"."DBO"."TBL_DESK"("DESK_ID");

alter table "GREENVINE_DB"."DBO"."TBL_DESK_EMPLOYEE"
    add constraint "DBO"."FK_DESK_EMPLOYEE_EMPLOYEE" foreign key ("FK_EMPLOYEE_ID") references "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"("EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"
    add constraint "DBO"."FK_EMPLOYEE_MANAGER" foreign key ("FK_MANAGER_ID") references "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"("EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"
    add constraint "DBO"."FK_EMPLOYEE_USER" foreign key ("FK_USER_ID") references "GREENVINE_DB"."DBO"."TBL_USER"("USER_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE_MENTOR"
    add constraint "DBO"."FK_EMPLOYEE_MENTOR" foreign key ("MENTOR_ID") references "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"("EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_EMPLOYEE_MENTOR"
    add constraint "DBO"."FK_EMPLOYEE_MENTOREE" foreign key ("MENTOREE_ID") references "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"("EMPLOYEE_ID");

alter table "GREENVINE_DB"."DBO"."TBL_GROUP_USER"
    add constraint "DBO"."FK_GROUP_USER_GROUP" foreign key ("FK_GROUP_ID") references "GREENVINE_DB"."DBO"."TBL_GROUP"("GROUP_ID");

alter table "GREENVINE_DB"."DBO"."TBL_GROUP_USER"
    add constraint "DBO"."FK_GROUP_USER_USER" foreign key ("FK_USER_ID") references "GREENVINE_DB"."DBO"."TBL_USER"("USER_ID");

alter table "GREENVINE_DB"."DBO"."TBL_STAND_UMBRELLA"
    add constraint "DBO"."FK_STAND_UMBRELLA_STAND" foreign key ("FK_STAND_ID") references "GREENVINE_DB"."DBO"."TBL_STAND"("STAND_ID");

alter table "GREENVINE_DB"."DBO"."TBL_STAND_UMBRELLA"
    add constraint "DBO"."FK_STAND_UMBRELLA_UMBRELLA" foreign key ("FK_UMBRELLA_ID") references "GREENVINE_DB"."DBO"."TBL_UMBRELLA"("UMBRELLA_ID");

alter table "GREENVINE_DB"."DBO"."TBL_UMBRELLA"
    add constraint "DBO"."FK_UMBRELLA_EMPLOYEE" foreign key ("FK_EMPLOYEE_ID") references "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"("EMPLOYEE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_ACTIVITY"
    add constraint "TEST"."FK_ACTIVITY_TIMESHEET" foreign key ("FK_DATE","FK_EMPLOYEE_ID") references "GREENVINE_DB"."TEST"."TBL_TIMESHEET"("DATE","FK_EMPLOYEE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_BUGS"
    add constraint "TEST"."FK_BUGS_USER_OWNER" foreign key ("OWNER") references "GREENVINE_DB"."TEST"."TBL_USER"("USERNAME");

alter table "GREENVINE_DB"."TEST"."TBL_BUGS"
    add constraint "TEST"."FK_BUGS_USER_REPORTER" foreign key ("REPORTER") references "GREENVINE_DB"."TEST"."TBL_USER"("USERNAME");

alter table "GREENVINE_DB"."TEST"."TBL_CONSIGNMENT"
    add constraint "TEST"."FK_CONSIGNMENT_ADDRESS" foreign key ("FK_ADDRESS_ID") references "GREENVINE_DB"."TEST"."TBL_ADDRESS"("ADDRESS_ID");

alter table "GREENVINE_DB"."TEST"."TBL_CONSIGNMENT"
    add constraint "TEST"."FK_CONSIGNMENT_CUSTOMER" foreign key ("FK_FIRST_NAME","FK_LAST_NAME") references "GREENVINE_DB"."TEST"."TBL_CUSTOMER"("FK_FIRST_NAME","FK_LAST_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_CUSTOMER"
    add constraint "TEST"."FK_CUSTOMER_PERSON" foreign key ("FK_FIRST_NAME","FK_LAST_NAME") references "GREENVINE_DB"."TEST"."TBL_PERSON"("FIRST_NAME","LAST_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_FRIEND"
    add constraint "TEST"."FK_FRIEND_REQUESTEE" foreign key ("REQUESTEE_ID") references "GREENVINE_DB"."TEST"."TBL_PROFILE"("PROFILE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_FRIEND"
    add constraint "TEST"."FK_FRIEND_REQUESTER" foreign key ("REQUESTER_ID") references "GREENVINE_DB"."TEST"."TBL_PROFILE"("PROFILE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_PARKING_PERMIT"
    add constraint "TEST"."FK_PARKING_PERMIT_VEHICLE" foreign key ("FK_REG_NUMBER") references "GREENVINE_DB"."TEST"."TBL_VEHICLE"("REG_NUMBER");

alter table "GREENVINE_DB"."TEST"."TBL_PARKING_PERMIT_PAYMENT"
    add constraint "TEST"."FK_PARKING_PERMIT_PAYMENT_PARKING_PERMIT" foreign key ("FK_PARKING_PERMIT_DATE","FK_REG_NUMBER") references "GREENVINE_DB"."TEST"."TBL_PARKING_PERMIT"("DATE","FK_REG_NUMBER");

alter table "GREENVINE_DB"."TEST"."TBL_PASSPORT"
    add constraint "TEST"."FK_PASSPORT_PERSON" foreign key ("FK_FIRST_NAME","FK_LAST_NAME") references "GREENVINE_DB"."TEST"."TBL_PERSON"("FIRST_NAME","LAST_NAME");

alter table "GREENVINE_DB"."TEST"."TBL_PROFILE"
    add constraint "TEST"."FK_PROFILE_USER" foreign key ("FK_USERNAME") references "GREENVINE_DB"."TEST"."TBL_USER"("USERNAME");

alter table "GREENVINE_DB"."TEST"."TBL_SPOUSE"
    add constraint "TEST"."FK_SPOUSE_FROM" foreign key ("SPOUSE_FROM_ID") references "GREENVINE_DB"."TEST"."TBL_PROFILE"("PROFILE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_SPOUSE"
    add constraint "TEST"."FK_SPOUSE_TO" foreign key ("SPOUSE_TO_ID") references "GREENVINE_DB"."TEST"."TBL_PROFILE"("PROFILE_ID");

alter table "GREENVINE_DB"."TEST"."TBL_TIMESHEET"
    add constraint "TEST"."FK_TIMESHEET_EMPLOYEE" foreign key ("FK_EMPLOYEE_ID") references "GREENVINE_DB"."DBO"."TBL_EMPLOYEE"("EMPLOYEE_ID");

