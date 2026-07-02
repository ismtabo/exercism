local EliudsEggs = {}

function EliudsEggs.egg_count(number)
  ones=0
  while number > 0 do
    ones=ones + math.floor(number % 2)
    number = number / 2
  end
  return ones
end

return EliudsEggs
