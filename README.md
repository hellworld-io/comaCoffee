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