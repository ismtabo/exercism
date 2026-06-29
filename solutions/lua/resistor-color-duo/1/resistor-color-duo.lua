colors_map = {
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white',
}

function tonumber(color)
  for k, v in ipairs(colors_map) do
    if v == color then
      return k - 1
    end
  end
  error(string.format("Unexpected color: %s", color))
end

return {
  value = function(colors)
    return tonumber(colors[1])*10 + tonumber(colors[2])
  end
}
