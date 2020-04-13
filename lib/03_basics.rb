# On regarde qui est le plus grand des trois nombres et on cherche si il n'y a pas de nil
def who_is_bigger (a,b,c) 
  if a == nil || b == nil || c == nil
    return "nil detected"
  elsif a >= b && a >= c
    return "a is bigger"
  elsif b >= a && b >= c
    return "b is bigger"
  else 
    return "c is bigger"
  end 
end

# On met tout en majuscule, on inverse tout les caratères et on supprime les lettres L T et A
def reverse_upcase_noLTA (s)
  s.upcase.reverse.delete("LTA")
end

# On cherche si le tableau contient le nombre 42
def array_42 (array)
  array.include?(42)
end

# On supprime les tableau de tableau, on trie le tableau, on multiplie tout les nombres par 2, on supprime les multiples de 3 et on enlève les doublons
def magic_array (array)
  array.flatten.sort.map{|x| x*2}.reject{|x| x%3 == 0}.uniq
end
