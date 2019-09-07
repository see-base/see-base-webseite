LEKTOR_SERVER_FLAGS=-h 127.0.0.1

all: build

sass:
	lektor clean --yes
	lektor build -f sass

sass-uncompressed:
	lektor clean --yes
	lektor build -f sass

install:
	pip install lektor

build: sass
	lektor build -f sass

server:
	lektor server $(LEKTOR_SERVER_FLAGS)


