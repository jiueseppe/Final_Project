# Base image w/ R pre-installed
FROM rocker/r-ver:4.4.2

# Install system dependencies

RUN apt-get update && apt-get install -y pandoc

# Install renv

RUN Rscript -e "install.packages('renv', repos='https://cloud.r-project.org')"

# Create and switch into our project directory
RUN mkdir /project
WORKDIR /project

# Copy necessary file for renv
COPY renv.lock ./
COPY renv/activate.R renv/
COPY renv/settings.json renv/

# Restore R package library
RUN Rscript -e "renv::restore(prompt=FALSE)"

# Copy code, data, Rmd, and Makefile
COPY code/              code/
COPY BRFSS_Caregiver_Subset.csv ./
COPY final_project_rmd.Rmd      ./
COPY Makefile                   ./

# Make an output dir. inside container
RUN mkdir -p report

# Default Command
CMD ["make", "report"]
