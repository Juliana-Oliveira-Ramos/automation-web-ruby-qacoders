## (env.rb) primeiro é o arquivo a ser lido primeiro antes de excutar o projeto
##chama todas as dependencias do projeto
## require vem primeiro para definir o que precisa ser
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'helper.rb'
require_relative 'page_helper.rb'


#primeiro a variavel de ambiente
ENVIRONMENT = ENV['ENVIRONMENT']
puts "ENVIRONMENT is runner >>> #{ENVIRONMENT}"


#para saber qual url estou passando e se nao passar nada ele pega automaticamente o development
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml") #arquivo recebe o nome do diretorio


World(Helper) #tornou-se publica para o projeto o arquivo helper
World(Pages) #tornou-se publico parqa o projeto o arquivo pages



Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_default']# nao importa ual ambiente ele ler a url
config.default_max_wait_time = 10
end 