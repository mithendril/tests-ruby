# Adiition de a et b
def add (a,b)
  return a+b
end

# Soustraction de a et b
def subtract (a,b)
  return a-b
end

# Somme des éléments d'un tableau
def sum (array)
  return array.inject(0){|sum, item| sum + item}
end

# Multiplication de a par b
def multiply (a,b)
 return a*b
end

# Elever a à la puissance b
def power (a,b)
  return a**b
end

# Calcul de la factoriel de a
def factorial (a)
  factorial = 1
  i=1
  a.times do 
    factorial = factorial*i 
    i+=1
  end
  return factorial
end