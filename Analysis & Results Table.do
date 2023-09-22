************************************************************************
* TITLE: CAnD3: RRWM Data Activity - Analaysis & Regression Table
* AUTHOR: Bavisha Thurairajah 
* DATE STARTED: September 18th, 2023 
************************************************************************

version 17


use "C:\Users\tbavi\OneDrive\Desktop\GSS 2017.dta"

***Conduct Logistic Regression Analysis***
logistic mh tenure agec mars dweltype hsize
estimates store WholeSample

//Sex-Stratified Regressions
logistic mh tenure agec mars dweltype hsize if sex1==1
estimates store Female

logistic mh tenure agec mars dweltype hsize if sex1==0
estimates store Male

***Create Table of Regression Results***
etable, estimates(WholeSample Female Male) column(estimates) showstars showstarsnote