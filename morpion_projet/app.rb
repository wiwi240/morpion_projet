# Charge le gestionnaire de dépendances Bundler
require 'bundler'
# Récupère et charge toutes les gems listées dans le Gemfile (ex: colorize)
Bundler.require

# Ajoute le dossier contenant la logique métier (app) au chemin de recherche Ruby
$:.unshift File.expand_path("./../lib/app", __FILE__)
# Ajoute le dossier contenant les classes d'affichage (views) au chemin de recherche Ruby
$:.unshift File.expand_path("./../lib/views", __FILE__)

# Charge les fichiers source nécessaires au fonctionnement du programme
require 'player'
require 'board_case'
require 'board'
require 'game'
require 'show'
require 'application'

# Point d'entrée du script : instancie la classe Application et appelle la méthode perform
Application.new.perform