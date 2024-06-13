all:
	@rm -f README.html; \
		markdown_py README.md > README.html; \
		so

clean:
	@rm -f README.html

.PHONY: all clean
