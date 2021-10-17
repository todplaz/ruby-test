# # puts"C'est nouveau" + " c'est ton ordinateur là ?"

# # voiture =" Toyota"
# # # puts voiture
# # voiture = "Nissan"
# # # puts voiture

# # NOM = "Alex"
# # # puts NOM

# # # NOM="stephane"
# # # puts NOM




# # # puts "Quel est votre nom ?"
# # userName = gets.chomp

# # # puts = "Quel est votre prenom ?"
# # userSurname = gets.chomp

# # # puts "Quel est votre sexe ?"
# # userSex = gets.chomp

# # # puts "Quel est votre age ?"
# # userAge = gets.chomp

# # userInformation = "Vous vous appelez #{userName}" + " #{userSurname}" + ", vous avez #{userAge} et vous etes de sexe #{userSex}"
# # # puts userInformation


# #------------------METHODE / FONCTION---------------------

# def soustraction(x, y)
#   x - y
# end

# # # puts soustraction(10, 7)

# def division(x, y)
#   x / y
# end

# # # puts division(50.0, 4)

# # Convertir uen chaine de caractere en nombre, on utilise la methode ( to_f ) qui signifie to_float

# # puts "Entrez votre premier nombre"

# # one = gets.chomp.to_f

# # puts "Entrez votre deuxieme nombre"

# # two = gets.chomp.to_f

# # puts "Le resultat de la division des deux nombres est égale à : #{division(one, two)}"

# #------------------------PETITE CALCULATRICE en Ruby-------------------
# def addition(x, y)
#   x + y
# end

# def soustraction(x, y)
#   x - y
# end

# def multiplication(x, y)
#   x * y
# end

# def division(x, y)
#   x / y
# end

# def modulo(x, y)
#   x % y
# end

# # puts "| 1-addition | 2-soustraction | 3-multiplication | 4-division | 5-modulo |"
# # puts "Faites un choix d'opération entre 1 et 5" 
# # userChoice = gets.chomp.to_f

# # puts "Entrez votre premier chiffre"
# # a = gets.chomp.to_f

# # puts "Entrez votre deuxieme chiffre"
# # b = gets.chomp.to_f

# if userChoice == 1
#   result = addition(a, b)

# elsif userChoice == 2
#   result = soustraction(a, b)

# elsif userChoice == 3
#   result = multiplication(a, b)

# elsif userChoice == 4
#   result = division(a, b)

# elsif userChoice == 5
#   result = modulo(a, b)

# else puts "Veuillez entrez un chiffre valide entre 1 et 5"
# end

# # puts "La solution de votre opération est : #{result}"


# #-------------------ARRAY--------------------

# tableau = [
#   ["Alex", 35, "Homme"], ["Laurie", 29, "Femme"], ["Laurence", 28, "Femme"]
# ]

# # puts tableau[0].include?("Laurie") #permet de rechercher la presence d'un element dans un array

# #--------------------Transformer une liste en array (avec to_a) ---------------

# list = (0..20).to_a
# # puts list[15]


#----------------BOUCLES--------------------

#------------While-------------

# start = 0

# while start <= 5 
#   puts "Here we go again for the #{start} time !!!"
#   start += 1
# end

#-------------For---------------

# table = ["lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]

table << "Coucou" #pareil que le push, permet d'ajouter un element au tableau 
table.append('Salut')
# for i in table 
#   puts i
# end

# #-------------Each---------------

# puts "*********************"

# table.each do |i|
#   puts i
# end
    
# puts "*********************"

# table.each { |i| puts i}


#---------------------Times-----------------------

10.times do |i|
  puts "Line number #{i}"
end

#------------------Until------------------------

i = 0
num_time = 5

until i > num_time
  puts "number line #{i}"
  i += 1
end


#--------------------HASHES-----------------------
#--------Clé avec chaines------------

# puts "=============================================="

# hash = {
#   "nom" => "Stephane", "Ville" => "Persan", "Pays" => "France"
# }

# puts hash["Ville"] #affiche la ville

# hash["langage"] = "Ruby" #ajoute le langage

# hash.delete("Pays")  #supprime le pays

# puts hash

# puts "=============================================="

# puts "***********************************"

# #--------Clé avec symboles------------

# hash2 = {
#   nom: "Alex", ville: "Saint-Ouen", pays: "France"
# }

# puts hash2[:pays] #affiche le pays

# hash2[:niveau] = "Junior"  #ajoute le niveau

# hash2.delete(:nom)  #supprime le nom


# puts hash2
# puts "***********************************"


# newHash = {nom: "Olland", prenom: "Alexis", age: 25, hobby: "Lire", "Cours" => "Ruby on rails"}

# newHash.each { |i, j| puts "Le nom de la clé est : #{i} et la valeur est : #{j}"}




#-----------------PROGRAMMATION ORIENTEE OBJET (POO)--------------------

# les deux types de fonctions qui existent sont celles
# qui permettent d'obtenir les infos sur un objet et celles
# pour definir le nom d'un objet 

# class Utilisateur
#   attr_accessor :name ,:email ,:age ,:sexe

#   def initialize(name, email, age, sexe)
#     @name = name
#     @email = email
#     @age = age
#     @sexe = sexe
#   end

# end

# user = Utilisateur.new("Alex", "alex@yahoo.fr", 35, "masculin")

# puts user.name

# # user.email = "alex@yahoo.fr"
# # user.age = 35
# # user.sexe = "masculin"

# puts "Votre identité est Mr : #{user.name} , et votre email : #{user.email}. Vous avez #{user.age} ans et etes de sexe #{user.sexe}"


class Father
     attr_accessor :name ,:email ,:age ,:sexe
  
     def initialize(name, email, age, sexe)
       @name = name
       @email = email
       @age = age
       @sexe = sexe
     end

     def self.methode
      puts"La fonction qui marche sans objet"
     end
  
   end
  
   father = Father.new("Alex", "alex@yahoo.fr", 35, "masculin")
  
   puts father.name, father.email, father.age, father.sexe

   class Son < Father
   end

   class Daughter < Father
   end

   puts"*********************************************************"

   son = Son.new("Layvin", "Layvin@gmail.com", 1, "masculin")
   puts son.name, son.email, son.age, son.sexe

   puts "********************************************************"

   daughter = Daughter.new("Lya", "Lya@gmail.com", 3, "feminin")
   puts daughter.name, daughter.email, daughter.age, daughter.sexe
 
   puts "<<<<<<<<<<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

   class SansObjet < Father
   end

   puts SansObjet.methode