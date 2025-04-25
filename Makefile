# Makefile for creating final report
.PHONY: install

install:
	Rscript -e "renv::restore()"

# produce report inside report/
report: report/final_report.html

report/final_report.html: final_project_rmd.Rmd
	Rscript -e "rmarkdown::render('final_project_rmd.Rmd', \
	   output_file='report/final_report.html')"

clean:
	rm -f report/final_report.html

## macOS / Linux
docker-run-mac:
	mkdir -p report
	docker run --rm -v "$(pwd)/report":/project/report jiuseppe/final-report

## Windows
docker-run-win:
	mkdir -p report
	docker run --rm -v "//$$(pwd)/report":/project/report jiuseppe/final-report
