**This README explains the project structure/contents, how to generate the report, and where to find the code used for creating the report's table and figure.**

## Repository Contents
- `code/` — folder containing:
  - `load_data.R`
  - `run_regression.R`
  - `create_plot.R`
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

**Before you build the report for the first time, install all R package dependencies by running:**


make install


**Then, in the same terminal session:**

1. Open the Terminal tab in RStudio.
2. Ensure you are in the root project folder.
3. Run the following command to generate the final report:

make report

4. The command above will build the report by rendering `final_project_rmd.Rmd` into `final_report.html`.

## Where to Find the Code

- **Table (regression results):** Code for creating the table is in the chunk labeled `regression-analysis` in `final_project_rmd.Rmd`.
- **Figure (boxplot):** Code for creating the figure is in the chunk labeled `plot-data` in `final_project_rmd.Rmd`.


## Docker

This repository also includes a Dockerfile for fully-reproducible builds of the report.

### Build the Docker image

From the project root, run the following in the terminal/bash:

docker build -t jiuseppe/final-report:latest .

##Or, pull the pre-built image from DockerHub by running the following code in your terminal:

docker pull jiuseppe/final-report:latest


##To View image on DockerHub → https://hub.docker.com/r/jiuseppe/final-report


### Run the container
These targets will mount a local report/ folder and place final_report.html inside it when they complete:

### For macOS/Linux - run the following in your terminal:

make docker-run-mac

### For Windows - run the following in your terminal:

make docker-run-win

=============

Once finished, open report/final_report.html in your browser to view the compiled report.
