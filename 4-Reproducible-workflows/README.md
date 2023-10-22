# Hands-on 4: Reproducible pipelines with containers

## Question

1. Run the Nextflow pipeline with the docker provider and generate the results

```sh
curl -s https://get.nextflow.io | bash
 ./nextflow run nextflow-io/rnaseq-nf -with-docker
```

2. Use a caddy server to serve results on port 8888

```sh
docker run -d -p 8888:80 -v "$PWD/results/multiqc_report.html:/usr/share/caddy/index.html" caddy
```

## Solution

- All the steps are in the Makefile
- Use `make solution` to make all the steps.