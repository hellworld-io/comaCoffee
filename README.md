# CoffeeScript 정리

## 서문
* 2009년 크리스마스 제레미 애쉬키나스가 릴리즈를 함.
* 2010년 크리스마스에 1.0 릴리즈.
* javascript의 장점을 그대로 가지고 왔고 손쉽게 사용할 수 있는 문법을 채용.
* coffeescript 컴파일러는 javascript Lim을 준수하는 결과물을 만들려고 최선을 다한다.
* coffeescript 컴파일러는 오류코드에 대하여 리포트를 해준다.
* coffeescript는 간결하다.

## 설치
* node를 설치.
* npm 설치
* ``` npm install -g coffee-script ``` 명령어를 실행하여 최신버전의 coffeescript 를 설치한다.
* ``` coffee -v ``` 를 이용하여 설치된 버전을 확인.
* ``` export NODE_PATH=/usr/local/lib/node_modules ``` 을 이용하여 NODE_PATH를 설정힌디.
* console 에서 node명령어를 실행하여 node REPL에서 ``` require('coffee-script') ``` 를 실행하여 확인한다.
* Error : Cannot find module 'coffee-script'가 발생하면 NODE_PATH가 제대로 설정되어 있지 않아서이다.

## coffee 기본
### coffee 명령어
* ``` coffee hello.coffee ``` 명령어를 이용하여 실행.
* coffee -h
```
    -b, --bare         compile without a top-level function wrapper (컴파일된 javascript를 함수로 감싸지 않는다.)
	-c, --compile      compile to JavaScript and save as .js files
	-e, --eval         pass a string from the command line as input
	-h, --help         display this help message
	-i, --interactive  run an interactive CoffeeScript REPL
	-j, --join         concatenate the source CoffeeScript before compiling (컴파일전에 스크힙트들을 합친다.)
	-m, --map          generate source map and save as .js.map files
	-n, --nodes        print out the parse tree that the parser produces
      --nodejs       pass options directly to the "node" binary
      --no-header    suppress the "Generated by" header
	-o, --output       set the output directory for compiled JavaScript
	-p, --print        print out the compiled JavaScript
	-s, --stdio        listen for and compile scripts over stdio (표준 입출력을 통해 스크립트들을 컴파일한다.)
	-l, --literate     treat stdio as literate style coffee-script
	-t, --tokens       print out the tokens that the lexer/rewriter produce
	-v, --version      display the version number
	-w, --watch        watch scripts for changes and rerun commands (변경사항을 나타내고 재컴파일한다.)
```


