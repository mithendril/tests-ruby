# Régles pour: 1ere case est une voyelle
def translate_vowel (s)
  return s += "ay"
end

# Régles pour: 1ere case est une consonne
def translate_one_consonants (s)
  s += s[0] + "ay"
  return s = s[1..-1]
end

# Régles pour: 2 prmières cases sont des consonnes
def translate_two_consonants (s)
  s += s[0..1] + "ay"
  return s = s[2..-1]
end

# Régles pour: 3 prmières cases sont des consonnes
def translate_three_consonants (s)
  s += s[0..2] + "ay"
  return s = s[3..-1]
end

# Choix des diffèrents cas de figure
def translate_choise (s)
  # Première case est une voyelle
  if s[0].match?(/[aeiou]/) == true 
    return translate_vowel(s)
  # Les deux premières cases sont des consonnes et il n'y a pas de "qu"
  elsif s[0..2].count("^aeiou") == 2 && s[1].match?(/[aeiou]/) == false && s[1..2] != "qu"
    return translate_two_consonants(s)
  # Les trois premières cases sont des consonnes
  elsif s[0..2].count("^aeiou") == 3  
    return translate_three_consonants(s)
  # Les mots commence par "qu" -> équivanlent à 2 consonnes au début
  elsif s[0..1] == "qu"
    return translate_two_consonants(s)
  # Il y a "qu" après une consonne -> équivanlent à 3 consonnes au début
  elsif s[1..2] == "qu"
    return translate_three_consonants(s)
  # Il y a une seule consonne au début 
  else
    return translate_one_consonants(s)  
  end
end

# On place les mots dans un tableau, on les tranforme tous puis on refait la phrase pour obtenir un string
def translate (s)
  return s.split.map{|word| translate_choise(word)}.join(" ")
end

