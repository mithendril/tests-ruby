# Conversion des fahrenheit vers les celcius
def ftoc (fahrenheit)
  return (fahrenheit.to_f - 32)*5/9
end

# Conversion des celcius vers les fahrenheit
def ctof (celcius)
  return (celcius.to_f*9/5) + 32
end