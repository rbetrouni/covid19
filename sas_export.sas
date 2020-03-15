PROC EXPORT DATA= WORK.AIR_QUALITY 
            OUTFILE= "P:\COVID-19 Documents\data_analysis\air_quality_ex
ported_from_sas.csv" 
            DBMS=CSV REPLACE;
     PUTNAMES=YES;
RUN;
