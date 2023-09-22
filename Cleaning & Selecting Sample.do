************************************************************************
* TITLE: CAnD3: RRWM Data Activity - Cleaning & Recoding GSS Dataset
* AUTHOR: Bavisha Thurairajah 
* DATE STARTED: September 18th, 2023 
************************************************************************

version 17

use "C:\Users\tbavi\OneDrive\Desktop\GSS 2017.dta"


***Clean dataset - Select Analytical Sample*** 

drop if agec<65                               
drop if luc_rst !=1                            
