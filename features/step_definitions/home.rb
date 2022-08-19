Dado('que eu acesse a home page do projeto Qa.Coders') do
  home.load
 
end


Então('devo visualizar  a informação {string}') do |titleHomePage|
  home.validate_text_homePage(titleHomePage)
end



Quando('clico no menu {string}') do |sobre_nos|
  home.validate_text_home(sobre_nos)
end

Então('devo visualizar a informação {string}') do |sobre_nos|
  home.validate_text_home(sobre_nos)
end  

Quando('clico no menu {string}') do |depoimentos|
  home.validate_text_home(depoimentos)
end

Então('devo visualizar a informação') do |depoimentos|
  home.validate_text_home(depoimentos)
end

Quando ('clico no menu {string}') do |parceiros|
  home.validate_text_home(parceiros)
end

Então ('devo visualizar a informação') do |parceiros|
  home.validate_text_home(parceiros)
end