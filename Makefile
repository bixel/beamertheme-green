
build/main.pdf: main.tex
	mkdir -p build
	lualatex --shell-escape --output-directory=build $^

open: build/main.pdf
	open ./build/main.pdf

clean:
	rm -rf ./build
