# create HTML5 video player pages
dir_name="antiguo_testamento"
dir_name="estudios_de_la_palabra"
dir_name="nuevo_testamento"
dir_name="serie_de_sabiduria"
dir_name="como_leer_la_biblia"
dir_name="mini_serie_lucasshechos"
dir_name="serie_del_torah"
dir_name="temas_biblicos"

Dir.foreach("videos/#{dir_name}") do |file|
  next if file == '.' or file == '..'
    file_html = File.new("videos/#{dir_name}/#{file}.html", "w+")
    file_html.puts "<!DOCTYPE html>
    <html lang=\"en\">
      <head>
        <meta charset=\"utf-8\">
        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
        <meta name=\"description\" content=\"\">
        <meta name=\"author\" content=\"\">
        <link rel=\"icon\" href=\"../../favicon.ico\">
    
        <title>El Proyecto Biblia</title>
        <link href=\"../../css/bootstrap.min.css\" rel=\"stylesheet\">
        <link href=\"../../css/jumbotron.css\" rel=\"stylesheet\">
      </head>
    
      <body>
          <video width=\"832\" height=\"480\" controls>
            <source src=\"#{file}\" type=\"video/mp4\">
            Your browser does not support the video tag.
          </video>
      </body>
    </html>"
    file_html.close()
end



