console.log 'Hello Coffee!!'
console.log 'Watch !!!!'

# 함수 예제소스
-> 'Hello function!'                      #익명함수 생성

console.log do -> 'Hello function!!!!!'   # 익명함수 실행
console.log  (-> 'Hello function!!!')()   # 익명함수 실행

# hi함수 생성
hi = -> 'Hi function!'

console.log hi()    # hi함수 실행
console.log do hi   # hi함수 실행

# 인자삽입의 사용법
greeting = (subject) -> "안녕, #{subject}!!"    # 인자삽입을 사용하려면 반듯이 ""를 이용
console.log greeting 'CoffeeScript1'
console.log greeting "CoffeeScript2"

greeting = (subject) -> '안녕, #{subject}!!'    # 인자삽입 문법이 아니고 그냥 문자열로 인식함.
console.log greeting 'CoffeeScript3'
console.log greeting "CoffeeScript4"

# + 연산자의 사용법
# + 연산자는 공백을 구분하기 때문에 공백처리가 중요함.
squadron = 'RED'
xWing = squadron + 5

console.log xWing

# squadron = 'RED'
# xWing = squadron +5   # 구문오류 발생함.

squadron = 'RED'
xWing = "#{squadron}6"
console.log xWing
