from requests import *

url = get("http://api.open-notify.org/iss-now.json")

print(url)

data = url.json()

lat = data['iss_position']['latitude']

long = data['iss_position']['longitude']

print(f"The coordinates of ISS is {lat} degree North, {long} degree East")