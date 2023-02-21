
.PHONY: download bug

download:
	@mkdir lib
	@wget https://repo1.maven.org/maven2/com/github/codemonstur/httpclient/1.0.3/httpclient-1.0.3.jar
	@mv httpclient-1.0.3.jar lib

bug:
	@javac --version
	javac -d target -classpath lib/httpclient-1.0.3.jar -sourcepath src src/Main.java
