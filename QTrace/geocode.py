import requests
import json

googleApi = "AIzaSyCUv_Qpvl1AH_rjB3O6zQZ4aL2GmZkwKEs"

mapquestKey ="qJKZZGpVI48SsaCyCdlM6RwVruCDdvJK"

url = "http://www.mapquestapi.com/geocoding/v1/address?key=" + mapquestKey + "&location=Basak+Pardo"

data = requests.get(url2).json()                         #Get the 'whole' weather data from the link/ur

print(data)