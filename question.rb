require_relative "./Livret"

puts "-------------------LIVRET DE FAMILLE----------------------"

puts "Bonjour, veuillez entrer les informations demandées"


puts "Desirez vous ajouter un nouveau membre dans votre famille ? (O/N)"
answer = gets.chomp.upcase

while answer == "O"

  puts"Entrez votre nom"
  nom = gets.chomp.capitalize

  puts"Entrez votre age"
  age = gets.chomp.to_i

  puts"Entrez votre titre"
  titre = gets.chomp.capitalize

  puts"Entrez votre email"
  email = gets.chomp

  puts"Entrez votre numero de téléphone"
  telephone = gets.chomp.to_i


  newMember = Informations.new(nom, age, titre, email, telephone)

  newMember.sauvegarde

  puts "Souhaitez vous enregistrer un autre membre ? O/N"
  answer = gets.chomp 

  if answer != "O"
    break
  end

end