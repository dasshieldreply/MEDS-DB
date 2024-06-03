create or replace force editionable view "V_D_BIOMASS" 
as
   with param
   as
   (
      select /* +materialize */
             nv('P0_MEDSFILTER') medsfilter
      from   dual
   )
   select b.meds_job_number
   ,	    b.meds_observation_number
   ,	    b.latitude
   ,	    b.longitude
   ,	    b.date_recorded
   ,		 c.lower_depth
   ,		 c.upper_depth
   ,		 c.total_displacement_vol
   ,		 c.total_dry_mass
   ,		 c.total_settled_volume
   ,		 c.total_wet_mass
   from   param                     p
   ,      v_filter_meds_job_number  a
   ,      biomass_observation       b
   ,      biomass_data              c
   where  a.medsfilter              = p.medsfilter
   and    a.label_layer             = 'BIOMASS'
   and    b.meds_job_number         = a.meds_job_number
   and    c.meds_job_number         = b.meds_job_number
   and    c.meds_observation_number = b.meds_observation_number
;