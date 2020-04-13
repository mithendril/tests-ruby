# On retourne le meme string
def echo (s)
  return s
end

# On retourne le meme string mais en majuscule 
def shout (s)
  s.upcase
end

# On répète le mot numb fois par defaut numb=2
def repeat (s,numb=2)
  final_s =""
  numb.times {final_s += s + " "}
  # On supprime le dernier espace.
  return final_s.rstrip
end 

# On revoie les numb première lettre du mot
def start_of_word (s,numb)
  s[(0)..(numb-1)]
end

# On revoie le premier mot du string
def first_word (s)
  # On mets tout les mots dans un tableau et on revoie le contenue le la première case du tableau
  s.split.first
end

# On met en majuscule toutes les premières lettres des mots sauf les mots "and", "the" si ils ne sont pas au début du texte 
def titleize (s)
  # Une façon assez peu élégente... de faire. On capitalise tout les mots
  word_capitalise = s.gsub(/([0-9a-zA-Z_']+)/){|word| word.capitalize}
  # On décapitalise tout les "And" et les "The"
  no_small_word = word_capitalise.gsub(/(And)|(The)/){|word| word.downcase}
  # On capitalise les "and" et les "the" uniquement au début du string
  return no_small_word.gsub(/^(and)|^(the)/){|word| word.capitalize}
end