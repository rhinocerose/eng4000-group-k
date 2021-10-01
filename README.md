This is a repository for ENG4000 Group K, Greenhouse Controller.

## Project Structure
```
├── root
│   ├── documentation
|   │   ├── client (Any documentation provided by client)
|   │   │   ├── ABES.PROD.PW_KIN.B710.E8440.EBSU000.PDF
│   │   ├── requirements (Documentation we generate regarding requirements
|   │   │   ├── requirements.md
|   │   │   ├── requirements.pdf
│   ├── hardware (contains files related to hardware)
│   │   ├── source
|   │   │   ├── controller.sch
|   │   │   └── controller.brd
│   │   ├── libraries (any libraries and footprints will go here)
|   |   |   ├── libraries
|   |   │   │   ├── *.lbr
|   │   │   └── footprints
|   │   │   │   └── *.fpr
|   │   ├── production (contains all files used for board manufacturing and assembly)
|   |   |   ├── bom (contains all BOM files)
|   |   │   │   ├── controller-BOM.csv
|   │   │   └── gerbers (contains all zipped Gerbers)
|   │   │   │   ├── controller-gerbers.zip 
|   │   │   │   ├── controller-gerber-components.ger
|   │   │   │   └── controller-gerber-drill-files.xln
|   │   ├── assets (any pictures or 3D renders will go here)
│   │   │   ├── images
|   │   │   │   ├── *.jpg 
|   │   │   │   └── *.png
│   │   │   └── renders
|   │   │   │   ├── *.stl 
|   │   │   │   └── *.stp
│   ├── firmware (contains files related to firmware)
│   │   ├── src
|   │   │   ├── *.h
|   │   │   ├── *.c
|   │   │   └── *.cpp
├── README.md (This file)
├── generate_gerbers.sh (Point it at a file to generate gerbers and PDFs)
└── .gitignore
```
