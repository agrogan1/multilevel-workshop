* render with markstat

clear all

cd "/Users/agrogan/Desktop/GitHub/multilevel-workshop" // bilingual :-)

* first part

doedit "multilevel-workshop.stmd"

markstat using "multilevel-workshop.stmd", mathjax // HTML

graph close _all

markstat using "multilevel-workshop.stmd", docx // MS Word

graph close _all

markstat using "multilevel-workshop.stmd", pdf // PDF

graph close _all

* second part (cross classified models)

doedit "multilevel-workshop2.stmd"

markstat using "multilevel-workshop2.stmd", mathjax // HTML

graph close _all

markstat using "multilevel-workshop2.stmd", docx // MS Word

graph close _all

markstat using "multilevel-workshop2.stmd", pdf // PDF

graph close _all

* slidy

! /Applications/quarto/bin/tools/pandoc -s --mathjax -i -t slidy --css "UMslidy.css" --slide-level=2 "/Users/agrogan/Desktop/GitHub/multilevel-workshop/multilevel-workshop.html" -o "/Users/agrogan/Desktop/GitHub/multilevel-workshop/multilevel-workshop-slidy.html" 

doedit "MathJax-CDN.txt"

doedit "multilevel-workshop-slidy.html"


