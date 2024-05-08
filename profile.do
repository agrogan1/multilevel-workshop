
clear all

quietly: cd "/Users/agrogan/Desktop/GitHub/multilevel-workshop/"


use "../multilevel-thinking/simulate-and-analyze-multilevel-data/simulated_multilevel_data.dta", clear


mixed outcome || country: // unconditional model


mixed outcome warmth physical_punishment i.group HDI || country: warmth // multilevel model

est store crosssectional // store estimates


use "../multilevel-thinking/simulate-and-analyze-multilevel-data/simulated_multilevel_longitudinal_data.dta", clear


summarize // descriptive statistics


encode id, generate(idNUMERIC) // numeric version of id
	
* spagplot outcome t if idNUMERIC <= 10, id(idNUMERIC) scheme(s1color)
	
twoway (lfit outcome t) (scatter outcome t) if idNUMERIC <= 10, by(idNUMERIC) scheme(stcolor)

graph export spagplot2.png, width(1000) replace


clear all

quietly: cd "/Users/agrogan/Desktop/GitHub/multilevel-workshop/"


use "../multilevel-thinking/simulate-and-analyze-multilevel-data/simulated_multilevel_data.dta", clear


mixed outcome || country: // unconditional model


mixed outcome warmth physical_punishment i.group HDI || country: warmth // multilevel model

est store crosssectional // store estimates


use "../multilevel-thinking/simulate-and-analyze-multilevel-data/simulated_multilevel_longitudinal_data.dta", clear


summarize // descriptive statistics


encode id, generate(idNUMERIC) // numeric version of id
	
* spagplot outcome t if idNUMERIC <= 10, id(idNUMERIC) scheme(s1color)
	
twoway (lfit outcome t) (scatter outcome t) if idNUMERIC <= 10, by(idNUMERIC) scheme(stcolor)

graph export spagplot2.png, width(1000) replace


clear all

quietly: cd "/Users/agrogan/Desktop/GitHub/multilevel-workshop/"


use "../multilevel-thinking/simulate-and-analyze-multilevel-data/simulated_multilevel_data.dta", clear


mixed outcome || country: // unconditional model


mixed outcome warmth physical_punishment identity i.treatment HDI || country: warmth // multilevel model

est store crosssectional // store estimates


use "../multilevel-thinking/simulate-and-analyze-multilevel-data/simulated_multilevel_longitudinal_data.dta", clear


summarize // descriptive statistics


encode id, generate(idNUMERIC) // numeric version of id
	
* spagplot outcome t if idNUMERIC <= 10, id(idNUMERIC) scheme(s1color)
	
twoway (lfit outcome t) (scatter outcome t) if idNUMERIC <= 10, by(idNUMERIC) scheme(stcolor)

graph export spagplot2.png, width(1000) replace

