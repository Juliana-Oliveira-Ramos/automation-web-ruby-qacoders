#nesse arquivo onde estarao localizados os prints dos testes
module Helper
def print_screen(file_name, result)##vem do metodo la do arquivo hooks.rb/ e quando acabar o teste ele chama esse metodo
date = "#{Time.now.srtftime("%Y/%B/%D")}" #salva o arquivo com a data 
hour = "#{Time.now.srtftime("%H-%M-%S")}"

#diretorio onde ira salvar os prints 
file_path = "reports/screenshots/tests_#{result}"
screenshots = "#{file_path}/#{date}/#{hour}/#{file_name}.png" #recebe a pasta em que ira gravar os testes com o nome.data.hora.nome do arquivo 
page.save_screenshot(screenshots)
attach(screenshots, 'image/png')#anexa no arquivo que ira salvar 
end

end