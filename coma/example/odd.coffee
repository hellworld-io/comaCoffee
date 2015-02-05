odd = (num) ->
  if typeof num is 'number'
    if num is Math.round num
      if num > 0
        num % 2 is 1
        # throw num % 2 is 1
      else
        throw "#{num}는 양수가 아니다."
    else
      throw "#{num}는 정수가 아니다."
  else
    throw "#{num}는 숫자가 아니다."

#try
#  console.log odd 5
#catch e
#  console.log e

# odd 5

odd2 = (num) =>
    unless typeof num is 'number'
        throw "#{num}는 숫자가 아니다."
    unless num is Math.round num
        throw "#{num}는 정수가 아니다."
    unless num > 0
        throw "#{num}는 양수가 아니다."
    num % 2 is 1
