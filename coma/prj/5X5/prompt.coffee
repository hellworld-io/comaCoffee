# TODO
# 1. 타일의 좌표 입력 (x,y)
# 2. 입력이 유효(입력값 범위는 1~그리드 크기)하면, 두번째 타일의 좌표를 입력받는다.
# 3. 다시 입력이 유효한지 확인.
# 3-1. 정상이면 " 두 타일들을 서로 바꿀 수 있다" 라는 정보를 나타낸다.
# 3-2. 비정상이면 입력값이 올바르지 않은 이유를 설명하고 다시 한 번 입력할 수 있도록 한다.

stdin = process.openStdin()
stdin.setEncoding 'utf8'

inputCallback = null
stdin.on 'data' , (input) -> inputCallback input

promtForTile1 = ->
    console.log "첫 번째 타일 좌표를 입력하시기 바랍니다."
    inputCallback = (input) ->
        promtForTile2() if strToCoordinates input
