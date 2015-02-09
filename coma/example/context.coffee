setName = (name) -> @name = name

# 함수 정의시 인자명 앞에 @을 붙이면 자동으로 컨텍스트 객체(this)에 해당 인자명을 가진 속성을 만들고,
# 해당 속성에 그 인자값을 설정한다.
# setName = (@name) ->


cat = {}
cat.setName = setName
cat.setName '바보'
console.log cat.name

pig = {}
setName.apply pig, ['Babe']
# setNaame.call pig, 'Babe'     동일한 결과. call은 배열대신 개별요소를 인자로 받는다는 차이만 있음.
console.log pig.name

horse = {}
cat.setName.apply horse, ['Mr.Ed']
console.log horse.name

# new 키워드를 사용한 컨텍스트에 함수를 지정하는 법
Dog = setName
dog1 = new Dog('산체')
dog2 = new Dog('밍키')
console.log dog1.name
console.log dog2.name

# isDrill의 기본값이 true일때
fingFireAlarm = (isDrill) ->
    isDrill = true unless isDrill?

# unless : if not
# ? : 존재 확인연산자. 주어진 변수 또는 값이 해당 범위에 존재하는지, undefine 또는 null이 아닌지 체크
# a ? b : a가 존재하면 a를 반환하고 아니면 b를 반환
# c ?= d (=== c = d unless c?) : c가 존재하지 않으면 c = d라는 의미. 즉 c의 기본값은 d

# dontTryThisAtHome = (noArgNoProblem = @iHopeThisWorks()) ->
# dontTryThisAtHome = (noArgNoProblem) -> noArgNoProblem ?= @iHopeThisWorks()
# 위의 두 표현은 같은 의미
# 함수를 정의할 때 인자에 할당 표현이 있으면 해당 함수가 호출될 때 그 인자 표현식은 해당 컨텍스트에서 실행되고
# 재일먼저 살행된다.
