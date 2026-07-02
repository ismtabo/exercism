local Darts = {}

function Darts.score(x, y)
  dst=math.sqrt(x^2 + y^2)
  if dst > 10 then
    return 0
  elseif dst > 5 then
    return 1
  elseif dst > 1 then
    return 5
  end
  return 10
end

return Darts
