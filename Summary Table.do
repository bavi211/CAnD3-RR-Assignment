************************************************************************
* TITLE: CAnD3: RRWM Data Activity - Summary Statistics Table
* AUTHOR: Bavisha Thurairajah 
* DATE STARTED: September 18th, 2023 
************************************************************************

version 17

use "C:\Users\tbavi\OneDrive\Desktop\GSS 2017.dta"

***Create a Table of Summary Statistics***
tabstat agec mars tenure dweltype hsize mh, by(sex1) stat(n mean)

//Sex-Stratified Tables of Tenure and Mental Health 
bysort sex1: tab tenure mh, missing row