console.log 'Hello Coffee!!'
console.log 'Watch !!!!'

# 함수 예제소스
-> 'Hello function!'                      #익명함수 생성

console.log do -> 'Hello function!!!!!'   # 익명함수 실행
console.log  (-> 'Hello function!!!')()   # 익명함수 실행

# hi함수 생성
hi = -> 'Hi function!'
console.log hi()    # hi함수 실행

hi = -> 'Hi function!!'
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

# 표현식 삽입구문을 이용한 문자열 합치기
squadron = 'RED'
xWing = "#{squadron}6"
console.log xWing

# arguments객체 사용법
greeting2 = -> "Hello, #{arguments[0]}!!!"
console.log greeting2 'coma333'

# 제곱근 구하는 함수
cube = (num) -> Math.pow num, 3
console.log cube 3

#입력값의 홀수 판단함수
odd = (num) -> num % 2 is 1       # is는 javascript의 === 연산자로 컴파일됨.
console.log odd 2                 # 거짖이면 false
console.log odd 3                 # 참이면 true

#다른 변수의 값을 변경.
count = 0
addCount = -> count++
addCount()
console.log count
