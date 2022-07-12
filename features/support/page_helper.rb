#arquivo page_helpers.rb, responsavel por gerenciar todas as paginas de objetos, que ira conters as paginas de automaçao
# vamos criar um arquivo que le tudo que esta na pasta pages e le o arquivo (cenario da feature que vou executar), porque preciso identificar ? para carreegar os elementos a page
#para cada pagina criada terei que criar um modulo aqui !

Dir[File.join(File.dirname(__FILE__),". ./pages/*_page.rb")].each{|file| require file}

module Pages


    def home
        @home ||= Home.new
    end

    def login
        @login ||= Login.new
    end
    
end