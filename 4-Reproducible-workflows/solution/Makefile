solution: clone nextflow pipeline serve
clone:
	git clone https://github.com/nextflow-io/rnaseq-nf.git
nextflow:
	 curl -s https://get.nextflow.io | bash
pipeline:
	 ./nextflow run nextflow-io/rnaseq-nf -with-docker
serve:
	docker run -d -p 8888:80 -v "$$PWD/results/multiqc_report.html:/usr/share/caddy/index.html" caddy