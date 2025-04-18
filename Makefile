# Makefile for creating final report

.PHONY: install

install:
	Rscript -e "renv::restore()"

report: final_report.html

final_report.html: final_project_rmd.Rmd
	Rscript -e "rmarkdown::render('final_project_rmd.Rmd', output_file='final_report.html')"

clean:
	rm -f final_report.html
