Dado('que eu acesse a home page do projeto Qa.coders')do
home.load
binding.pry
end

Então('devo visualizar a informação{string}') do |titleHomePage|
    home.validate_text_homePage()# chama o metodo onde procura e verifica se o texto esta igual 
    

end