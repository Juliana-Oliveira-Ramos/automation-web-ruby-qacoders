class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL
    element :title_Aprenda_Na_Pratica , 'div[class="title"]'
    element :btn_Sobre_Nos , '//a[href="/#sobre-nos"]'
    element :btn_Depoimentos , '//a[contains(text(), "Depoimentos")]'
    element :btn_Parceiros , '//a[contains(text(), "Parceiros")]'
    #element :btn_Sobre_Nos , '//a[contains(text(), "Sobre Nós")]'
    set_url '/'

                def validate_text_homePage(titleHomePage)
                        el_title_HomePage = find('div[class = "title"]')
                        if el_title_HomePage.text.eql?() != true
                                raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
                            
                        end
                end

            def  validate_text_home(text_home_feature)
               if text_home_feature == "Aprenda na Pratica."
                    el_title_HomePage = find('div[class = "title"]').text()
                        if el_title_HomePage.text.eql?(titleHomePage) != true
                            raise "expect element: #{titleHomePage}, but retorned:#{el_title_HomePage}"
                            
                        end
                   def click_button(sobre_nos)
                        binding.pry
                        btn_Sobre_Nos.click()
                       
                   end
               elsif text_home_feature == "Sobre nós."
                        el_title_HomePage =  find('a[href="/#sobre-nos"]')
                        if el_title_HomePage.text.eql?(sobre_nos) != true
                            raise "expect element: #{sobre_nos}, but retorned:#{el_title_HomePage}"
                            
                        end 
                   
                        def click_button_depoimentos(depoimentos)
                            btn_Depoimentos.click()
                        end
               else text_home_feature == "Depoimentos"
                    el_title_HomePage = find( '//a[contains(text(), "Depoimentos")]' )
                        if el_title_HomePage.text.eql?(depoimentos) != true
                            raise "expect element: #{depoimentos}, but retorned:#{el_title_HomePage}"
                            
                        end
                            def click_button(parceiros)
                                btn_Parceiros.click()
                                
                            end  
                            if text_home_feature == "Parceiros"
                                el_title_HomePage = find('//a[contains(text(), "Parceiros")]')
                            end
               
                            
                           
                        if el_title_HomePage.text.eql(parceiros) != true
                            raise "expect element: #{parceiros}, but retorned: #{el_title_HomePage}"
                        end
                            
                        end   
                

               end
            end

                
        end
  
end
 

















