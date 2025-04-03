**This README explains the project structure/contents, how to generate the report, and where to find the code used for creating the report's table and figure.**

## Repository Contents

- `final_project_rmd.Rmd` — the main R Markdown source file
- `BRFSS_Caregiver_Subset.csv` — subset of the BRFSS data used in the analysis
- `final_report.html` — output report that will be generated from the R Markdown
- `Makefile` — makefile that automates the report creation and cleaning
- `README.md` — this README file

## Contents of the Report

The generated report includes:

- An introduction section that describes the data set and states the analysis objectives
- A regression analysis examining the relationship between days of poor mental health and the inability to afford a doctor.
- A boxplot comparing days of poor mental health across different primary insurance types.

## How to Generate the Report

1. Open the Terminal tab in RStudio.
2. Ensure you are in the root project folder.
3. Run the following command to generate the final report:

make report

4. The command above will build the report by rendering `final_project_rmd.Rmd` into `final_report.html`.

## Where to Find the Code

- **Table (regression results):** Code for creating the table is in the chunk labeled `regression-analysis` in `final_project_rmd.Rmd`.
- **Figure (boxplot):** Code for creating the figure is in the chunk labeled `plot-data` in `final_project_rmd.Rmd`.

