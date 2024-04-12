
select * from all_sequences
where sequence_owner='MEDSADMIN';

select max(job_number) from meds_processing_job;

alter sequence MEIC_NUMBER_SEQUENCE restart start with 7294;

alter table job_tracking modify meic_number default MEIC_NUMBER_SEQUENCE.nextval;


create sequence job_number_sequence  minvalue 1 maxvalue 999999999999999999999999999 increment by 1 start with 102533 nocache  noorder  nocycle  nokeep  noscale  global ;

alter table meds_processing_job modify job_number default job_number_sequence.nextval;

select * from v_job_tracking_b;