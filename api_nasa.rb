require 'net/http'
require 'json'

# Método para hacer la consulta a la API y obtener el hash de resultados
def request(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

# Método para construir la página web con las imágenes
def build_web_page(data_hash)
  html = "<html>\n<head>\n</head>\n<body>\n<ul>\n"

  data_hash['photos'].each do |photo|
    html += "<li><img src='#{photo['img_src']}'></li>\n"
  end

  html += "</ul>\n</body>\n</html>"
end
 
# Método para obtener la cantidad de fotos por cámara
def photos_count(data_hash)
  count_hash = Hash.new(0)

  data_hash['photos'].each do |photo|
    camera_name = photo['camera']['name']
    count_hash[camera_name] += 1
  end

  count_hash
end

# URL de la API de Mars Rover Photos
api_key = 'vGDgfYUvOE2IfveensdD662tyrxHWinQ31aHKYCh'
sol_number = 10

url = "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=#{sol_number}&api_key=#{api_key}"

 #Obtener el hash de la respuesta
response_hash = request(url)

# Construir la página web
web_page = build_web_page(response_hash)

# Obtener el hash con la cantidad de fotos por cámara
photos_count_hash = photos_count(response_hash)

# Imprimir la página web y el hash con la cantidad de fotos por cámara
puts web_page
puts photos_count_hash