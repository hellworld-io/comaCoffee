setName = (name) -> @name = name

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
