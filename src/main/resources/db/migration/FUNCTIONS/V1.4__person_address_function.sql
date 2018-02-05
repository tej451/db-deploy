--creating function get_complete_address

create or replace FUNCTION get_complete_address(in_person_id IN NUMBER)
   RETURN VARCHAR2
   IS person_details VARCHAR2(130);

   BEGIN

	  SELECT 'Name-'||person.first_name||' '|| person.last_name||',
        City-'|| address.city ||', State-'||address.state||',
        Country-'||address.country||', ZIP Code-'||address.zip_code
      INTO person_details
      FROM person_info person, person_address_details address
      WHERE person.person_id = in_person_id
      AND address.person_id = person.person_id;

      RETURN(person_details);

    END get_complete_address;