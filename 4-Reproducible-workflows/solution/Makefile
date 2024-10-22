solution: clone pipeline serve

clone:
	git clone https://github.com/nextflow-io/rnaseq-nf.git
pipeline:
	nextflow run nextflow-io/rnaseq-nf -with-docker
serve:
	docker rm -f $$(docker ps -q --filter "publish=8888")
	docker run -d -p 8888:80 -v "$$PWD/results/multiqc_report.html/Nextflow-RNA-seq-demo_multiqc_report.html:/usr/share/caddy/index.html" caddy

