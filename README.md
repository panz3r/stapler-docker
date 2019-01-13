# Stapler Docker

> A simple [Docker](https://www.docker.com) container for manipulating PDF documents with ease using [Stapler](https://github.com/hellerbarde/stapler)

## Setup

### Choose how to manipulate

Choose how you want to manipulate your PDF documents by editing `entrypoint.sh` file.
The default script splits PDFs files into their single pages and writes each page into it's own pdf file.

See [Stapler README](https://github.com/hellerbarde/stapler/blob/master/README.rst#usage) to see available commands.

### Build Docker image

Build the Docker image by running

```sh
docker build . -t stapler-docker
```

### Prepare PDFs

Place the PDF files to manipulate inside the `input` folder

### Run

Launch the Docker image by running

```sh
docker run --rm -v $(pwd)/input:/data/input:ro -v $(pwd)/output:/data/output:rw stapler-docker
```

### Enjoy

The resulting files can be found inside the `output` folder
