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
    console.log "첫 번째 타일 좌표를 입력하기 바랍니다."
    inputCallback = (input) ->
        promtForTile2() if strToCoordinates input

promtForTile2 = ->
    console.log "두 번째 타일 좌표를 입력하기 바랍니다."
    inputCallback = (input) ->
        if strToCoordinates input
            console.log "타일 교환... 완료!"
            promtForTile1()

GRID_SIZE = 5
inRange = (x,y) ->
    0 <= x < GRID_SIZE and 0 <= y < GRID_SIZE

isInteger = (num) ->
    num is Math.round(num)

strToCoordinates = (input) ->
    halves = input.split(',')
    if halves.length is 2
        x = parseFloat halves[0]
        y = parseFloat halves[1]
        if !isInteger(x) or !isInteger(y)
            console.log "각 좌표는 정수값이어야 한다."
        else if not inRange x - 1 , y - 1
            console.log "각 좌표값의 범위는 1에서부터 #{GRID_SIZE}까지다."
        else
            {x,y}
    else
        console.log "입력 형식은 'x,y'이다"

console.log "5X5 단어 게임에 오신 것을 환영합니다."
promtForTile1()
