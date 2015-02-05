# 변수의 범위에 대한 예제
# age = 90      # 전역변수
# reincarnate = -> age = 0
# reincarnate()
# console.log "제 나이는 #{age} 입니다."

# 결과 : 제 나이는 0 입니다.

# reincarnate = -> age = 0
# age = 90      #전역변수
# reincarnate()
# console.log "제 나이는 #{age} 입니다."

# 결과 : 제 나이는 90 입니다.

reincarnate = -> age = 0
reincarnate()
console.log "제 나이는 #{age} 입니다."     # 함수 밖에서 변수를 참조하려했기 때문에 오류

# 결과 : ReferenceError: age is not defined
