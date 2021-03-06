-- Authors: Richard D Boyce, Erica Voss, Lee Evans
-- 2014/2015
-- sql server script

EXEC sp_rename '${ohdsiSchema}.DRUG_HOI_EVIDENCE.MODALITY', 'SUPPORTS' , 'COLUMN'

EXEC sp_rename '${ohdsiSchema}.LAERTES_SUMMARY.CT_COUNT', 'MEDLINE_CT_COUNT' , 'COLUMN'
EXEC sp_rename '${ohdsiSchema}.LAERTES_SUMMARY.CASE_COUNT', 'MEDLINE_CASE_COUNT' , 'COLUMN'
EXEC sp_rename '${ohdsiSchema}.LAERTES_SUMMARY.OTHER_COUNT', 'MEDLINE_OTHER_COUNT' , 'COLUMN'

ALTER TABLE ${ohdsiSchema}.LAERTES_SUMMARY ADD CTD_CHEMICAL_DISEASE_COUNT  INT;
ALTER TABLE ${ohdsiSchema}.LAERTES_SUMMARY ADD SEMMEDDB_OTHER_COUNT INT;
ALTER TABLE ${ohdsiSchema}.LAERTES_SUMMARY ADD SEMMEDDB_NEG_OTHER_COUNT INT;
