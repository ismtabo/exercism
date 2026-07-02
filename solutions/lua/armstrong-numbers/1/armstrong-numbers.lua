local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
  number_str=tostring(number)
  number_len=string.len(number_str)
  result=0
  for i=1, number_len do
    result=result+tonumber(string.sub(number_str, i, i))^number_len
  end
  return result == number
end

return ArmstrongNumbers
