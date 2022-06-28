## (env.rb) primeiro é o arquivo a ser lido primeiro antes de excutar o projeto
##chama todas as dependencias do projeto
## require vem primeiro para definir o que precisa ser baixado 
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'