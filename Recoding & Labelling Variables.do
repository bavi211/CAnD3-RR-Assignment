************************************************************************
* TITLE: CAnD3: RRWM Data Activity - Recoding & Labelling Variables
* AUTHOR: Bavisha Thurairajah 
* DATE STARTED: September 18th, 2023 
************************************************************************

version 17

use "C:\Users\tbavi\OneDrive\Desktop\GSS 2017.dta"

***Recode Variables of Interest*** 

//Independent Variable - Tenure 
gen tenure= 1 if odr_10==1 
replace tenure = 0 if odr_10==2
replace tenure=. if odr_10== 6|odr_10== 7|odr_10== 8|odr_10== 9

//Outcome Variable - Self-Rated Mental Health 
gen mh=1 if srh_115== 1 |srh_115== 2 |srh_115== 3
replace mh=0 if srh_115== 4 |srh_115== 5
replace mh=. if srh_115== 6|srh_115== 7|srh_115== 8|srh_115== 9

//Stratification Variable - Sex 
gen sex1=1 if sex==2
replace sex1=0 if sex==1
replace sex1=. if sex== 6|sex== 7|sex== 8|sex== 9

//Confounder Variable - Marital Status 
gen mars=1 if marstat==1 |marstat==2
replace mars=0 if marstat==3 |marstat==4|marstat==5 |marstat==6
replace mars=. if marstat== 96|marstat== 97|marstat==98|marstat==99

//Confounder Variable - Dwelling Type 
gen dweltype=1 if dwelc==1 //house
replace dweltype=0 if dwelc==2|dwelc==3|dwelc==4 //apartment & other
replace dweltype=. if dwelc== 6|dwelc== 7|dwelc== 8|dwelc== 9

//Counfounder Variable - Household Size
gen hsize=1 if hsdsizec==4|hsdsizec==5|hsdsizec==6
replace hsize=0 if hsdsizec==1|hsdsizec==2|hsdsizec==3
replace hsize=. if hsdsizec==96|hsdsizec==97|hsdsizec==98|hsdsizec==99

*-------------------------------------------
***Label Variables of Interest*** 

//Independent Variable - Tenure 
label define tenure 1 "Owned" 0 "Rented"
label values tenure tenure

//Outcome Variable - Self-Rated Mental Health 
label define mh 1 "Good" 0 "Not Good"
label values mh mh

//Stratification Variable - Sex
label define sex1 1 "Female" 0 "Male"
label values sex1 sex1

//Confounder Variable - Marital Status 
label define mars 1 "Married/Common-law" 0 "Unmarried"
label values mars mars

//Confounder Variable - Dwelling Type 
label define dweltype 1 "House" 0 "Apartment & Other"
label values dweltype dweltype

//Counfounder Variable - Household Size
label define hsize 1 "More than 4" 0 "Less than 4"
label values hsize hsize