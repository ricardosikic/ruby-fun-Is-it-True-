def is_it_true(exp)
  newArr = exp.split('')
  findSign = ''
  
  newArr.each_with_index do |item, index|
    if item === '='
      findSign = newArr.find_index('=')
    elsif item === '<'
      findSign = newArr.find_index('<')
    elsif item === '>'
      findSign = newArr.find_index('>')
    end
  end

  firstNum = newArr.slice(0, findSign).join('').to_i
  secondNum = newArr.slice(findSign + 1, newArr.length()).join('').to_i
  sign = newArr[findSign]
  
  if sign === '='
    firstNum === secondNum ? true : false
  elsif sign === '>'
    firstNum > secondNum ? true : false
  elsif sign === '<'
    firstNum < secondNum ? true : false
  end
  
end


is_it_true("5=13")