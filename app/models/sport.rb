class Sport < ApplicationRecord
  LIST = ['football', 'football-americain', 'basketball', 'tennis', 'yoga', 'paddle', 'natation',
          'cyclisme', 'escalade', 'badminton', 'rugby', 'boxe', 'curling', 'judo',
          'fitness', 'volleyball', 'musculation']

  LIST_CLUB = [
    { "name" => "ALPCM NANTES BASKET", "localisation" => "Nantes" },
    { "name" => "Nantes Breil Basket", "localisation" => "Nantes" },
    { "name" => "A.S. SAINT ROGATIEN", "localisation" => "Nantes" },
    { "name" => "ASC SAINT MEDARD DE DOULON", "localisation" => "Nantes" },
    { "name" => "REZE BASKET 44", "localisation" => "Rezé" },
    { "name" => "SPORTING CLUB", "localisation" => "Orvault" }
  ]
end
