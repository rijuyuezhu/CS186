all:
	@rm -f README.html; \
		markdown_py README.md > README.html; \
		( sleep 0.3; open "http://localhost:8080/README.html" > /dev/null 2>&1 ) & \
		python3 -m http.server 8080 --directory .

clean:
	@rm -f README.html

.PHONY: all clean
