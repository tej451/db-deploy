CREATE TABLE person_address_details
(
  PERSON_ADDRESS_ID number(5) primary key,
  PERSON_ID number(5) references person_info(person_id),
  CITY varchar2(15),
  STATE varchar2(15),
  COUNTRY varchar2(20),
  ZIP_CODE varchar2(10)
);