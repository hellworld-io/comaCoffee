refine = (wheat, chaff..., ships) ->
  console.log "최고는: #{wheat}"
  console.log "나머지는: #{chaff.join(', ')}"
  console.log "마지막은: #{ships}"

# 첫번째 인자인 '위대함' 다음의 모든 인자들은 chaff배열에 포함되어짐.
refine '위대함', '나쁘지 않음', '그저 그러함', '최악'

# 생략부호는 우선순위가 재일 마지막임.
# 두개의 인자만 전달하면 기본 argument만 전달받고 생략부호는 빈배열을 생성하게 된다.
refine '위대함', '나쁘지 않음'

refine '위대함'
