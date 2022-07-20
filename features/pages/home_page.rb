# é aqui onde iremos fazer todo o processo de configuraçao
class Home < SitePrism::Page
include RSepec::Matchers
include Capybara::DSL

set_url '/'
#element : title_HomePage, 'div[class = 'title']'

    def validate_text_homePage(titleHomePage)
    el_title_HomePage = find('div[class = "title"]').text()#recebe o elemento
  

#compara se que estamos recebendo e o mesmo que esta definido no bdd e retorna com mensagem informando o que espera/esperava 
    if el_title_HomePage.text.eql?(titleHomePage) != true
        raise "expect element: #{titleHomePage}, but retorned:#{el_title_HomePage}"
    end



end
