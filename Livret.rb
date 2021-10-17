require "json"


class Informations

  attr_accessor :nom, :age, :titre, :email, :telephone

  def initialize(*args)
    @nom = args[0]
    @age = args[1]
    @titre = args[2]
    @email = args[3]
    @telephone = args[4]
  end

  def sauvegarde

    sauve = {nom: @nom, age: @age, titre: @titre, email: @email, telephone: @telephone}.to_json # ransformer notre objet en Json

    open("Livret.json", "a") do |fichier|
      fichier.puts sauve  #enregistrer notre fichier Json dans le fichier distant json
    end

  end
end

