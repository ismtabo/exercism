require "math"

colors = {
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
}

function tonumber(color)
  for k, v in ipairs(colors) do
    if v == color then
      return k - 1
    end
  end
end

return {
  label = function(c1, c2, c3)
    value=(tonumber(c1)*10 + tonumber(c2)) * 10^tonumber(c3)
    zeros=math.floor(math.log(value, 10))
    unit=math.floor(zeros/3)
    unit_name="ohms"
    if unit >= 3 then
      unit_name="gigaohms"
      value=value/1000000000
    elseif unit >= 2 then
      unit_name="megaohms"
      value=value/1000000
    elseif unit >= 1 then
      unit_name="kiloohms"
      value=value/1000
    end
    return value, unit_name
  end
}
