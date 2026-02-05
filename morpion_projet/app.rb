require 'bundler'
Bundler.require

# Ajout des dossiers au PATH pour que Ruby trouve les fichiers
$:.unshift File.expand_path("./../lib/app", __FILE__)
$:.unshift File.expand_path("./../lib/views", __FILE__)

require 'player'
require 'board_case'
require 'board'
require 'game'
require 'show'
require 'application'

# Lancement du programme
Application.new.perform