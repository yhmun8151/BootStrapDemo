from bs4 import BeautifulSoup
from urllib.request import urlopen

response = urlopen('https://en.wikipedia.org/wiki/Main_Page')
soup = BeautifulSoup(response, 'html.parser')
i = 1
f = open("새파일.txt", 'w')
for anchor in soup.find_all('a'):
  data = str(i) + " : " + anchor.get('href', '/') + "\n"
  i = i + 1
  f.write(data)
f.close