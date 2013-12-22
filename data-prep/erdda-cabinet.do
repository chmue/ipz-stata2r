* stata2r project by the Chair of Political Methodology, IPZ, UZH
* code by Christian Müller

webuse set "http://www.erdda.se/datafiles/erd/"
webuse "ERD-e_SA_SOE_N-29_Final_22-1-2013_B"

keep v001e v003e v004e v005e v008e v009e v010e v305e v603e v605e v306e v310e v312e v700e

* rename variables
rename v001e cty
rename v003e cab_code
rename v004e startdate
rename v005e enddate
rename v008e genelect_start
rename v009e genelect_end
rename v010e cab_comp
rename v305e durat_max
rename v603e durat_rel
rename v605e durat_abs
rename v306e n_party_abs
rename v310e barg_frag
rename v312e seatshare_largest
rename v700e elect_volat

* annotate variables
label var cty
label var cab_code
label var startdate
label var enddate
label var genelect_start
label var genelect_end
label var cab_comp
label var durat_max
label var durat_rel
label var durat_abs
label var n_party_abs
label var barg_frag
label var seatshare_largest
label var elect_volat

save "erdda-cabinet", replace
