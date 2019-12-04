truncate table tmp_dob3;

insert into tmp_dob3(job_num, doc_num, borough, house_num, street_name, tax_block, tax_lot, bin_number, job_type_code,
job_status_code, job_status_descr,  latest_action_date, building_type, community_board,
is_cluster, is_landmarked, is_adult_estab, has_loft_board, is_city_owned, is_little_e_hazardous, is_pc_filed, is_efiled, 
is_plumbing_work, is_mechanical_work, is_boiler_work,is_fuel_burning_work, is_fuel_storage_work, is_standpipe_work, 
is_sprinkler_work, is_fire_alarm_work, is_equipment_work, is_fire_supression_work, is_curb_cut_work, is_other_work,
other_description, applicant_first_name, applicant_last_name, applicant_professional_title, applicant_license_num,
has_professional_cert, pre_filing_date, paid_date, fully_paid_date,assigned_date,approved_date, fully_permitted_date)
select `Job #`, `Doc #`, `Borough`, `House #`,`Street Name`,`Block`, `Lot`, `Bin #`, `Job Type`, 
`Job Status`,  `Job Status Descrp`, STR_TO_DATE(left(`Latest Action Date`, 19), '%m/%d/%Y %T'),`Building Type`, `Community - Board`,
case when `Cluster` = 'Y' then 1 else 0 end, case when `Landmarked` in('L', 'Y') then 1 else 0 end,
case when `Adult Estab` = 'Y' then 1 else 0 end, case when `Loft Board` = 'Y' then 1 else 0 end,
case when `City Owned` = 'Y' then 1 else 0 end, case when `Little e` = 'Y' then 1 else 0 end,
case when `PC Filed` = 'Y' then 1 else 0 end, case when `eFiling Filed` = 'Y' then 1 else 0 end,
case when `Plumbing` in ('X','Y') then 1 else 0 end, case when `Mechanical` in ('X','Y') then 1 else 0 end, case when `Boiler` in ('X','Y') then 1 else 0 end,
case when `Fuel Burning` in ('X','Y') then 1 else 0 end, case when `Fuel Storage` in ('X','Y') then 1 else 0 end,
case when `Standpipe` in ('X','Y') then 1 else 0 end, case when `Sprinkler` in ('X','Y') then 1 else 0 end,
case when `Fire Alarm` in ('X','Y') then 1 else 0 end, case when `Equipment` in ('X','Y') then 1 else 0 end,
case when `Fire Suppression` in ('X','Y') then 1 else 0 end, case when `Curb Cut` in ('X','Y') then 1 else 0 end,
case when `Other` in ('X','Y') then 1 else 0 end,`Other Description`, `Applicant's First Name`, `Applicant's Last Name`, `Applicant Professional Title`,
 `Applicant License #`, case when `Professional Cert` = 'Y' then 1 else 0 end, 
 STR_TO_DATE(left(`Pre- Filing Date`, 19), '%m/%d/%Y %T'),  STR_TO_DATE(left(`Paid`, 19), '%m/%d/%Y %T'), 
 STR_TO_DATE(left(`Fully Paid`, 19), '%m/%d/%Y %T'), STR_TO_DATE(left(`Assigned`, 19), '%m/%d/%Y %T'),  
 STR_TO_DATE(left(`Approved`, 19), '%m/%d/%Y %T'), STR_TO_DATE(left(`Fully Permitted`, 19), '%m/%d/%Y %T')
from  stg_dob3;
