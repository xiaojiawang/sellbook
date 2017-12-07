result = JSON(RestClient.get(url))

cityname=%E4%B8%8A%E6%B5%B7&dtype=&key=666e602752185df575dfbb821f88f825

url = "http://op.juhe.cn/onebox/weather/query"
cityname = "浦东新区"
cityname = Rack::Utils.escape(cityname)
dtype = ""
key = "666e602752185df575dfbb821f88f825"
url = "#{url}?cityname=#{cityname}&dtype=#{dtype}&key=#{key}"
result = JSON(RestClient.get(url))
