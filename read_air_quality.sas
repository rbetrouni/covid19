libname covid19 "P:\COVID-19 Documents\data_analysis";

     /**********************************************************************
     *   PRODUCT:   SAS
     *   VERSION:   9.4
     *   CREATOR:   External File Interface
     *   DATE:      09MAR20
     *   DESC:      Generated SAS Datastep Code
     *   TEMPLATE SOURCE:  (None Specified.)
     ***********************************************************************/
      data WORK.air_quality    ;
       %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
       infile 'P:\COVID-19 Documents\air_quality.txt' delimiter='09'x MISSOVER DSD lrecl=32767 ;
          informat VAR1 best32. ;
          informat VAR2 $18. ;
          informat VAR3 best32. ;
          informat VAR4 best32. ;
          format VAR1 best12. ;
          format VAR2 $18. ;
          format VAR3 best12. ;
          format VAR4 best12. ;
       input
                   VAR1
                   VAR2 $
                   VAR3
                   VAR4
       ;
       if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
run;

data covid19.air_quality;
 set air_quality;
run;

PROC EXPORT DATA= WORK.AIR_QUALITY 
            OUTFILE= "P:\COVID-19 Documents\data_analysis\air_quality_ex
ported_from_sas.csv" 
            DBMS=CSV REPLACE;
     PUTNAMES=YES;
RUN;
