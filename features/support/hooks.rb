## esse arquivo hooks tem a missao de estrategia de antes e depois dos testes

Before do |scenario| ##antes de executar o teste
#antes de executar cada cenario voce vai limpar os cookies
    Capybara.current_session.driver.manager.delete_all_cookies
    page.driver.quit 
end  

After do |scenario| ## depois do teste excutado,ira gravar a evidencia em uma variavel e tirar print
    ##gsub() = é um rejex , tr é um replace 
scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_') # tira todos os espaços e substitui por -
if scenario.failed?
    print(scenario_name.downcase!,'Failed' )
else
    print_screen(scenario_name.downcase!,'Sucess')
end
