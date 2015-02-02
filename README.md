
a spider to scrape mashape.com to the API signature format for SAMSaaS

mashape.com is the largest world-class marketplace to consume, 
distribute, manage, and monitor both private and public APIs 
from developers all over the world.

This project will create a spider to fetch the interfaces of the public APIs 
on mashape.com and store the data.

=============
Requirements:
==============
Scrapy
To install Scrapy, please follow the official guide:
http://doc.scrapy.org/en/0.24/intro/install.html

Make sure dependencies lib installed and worked.

Selenium
To scrape the JS rendered content, Selenium is needed.
steps for Selenium env setup: 

a. Download selenium server from http://www.seleniumhq.org/download/   selenium-server-standalone-2.37.0.jar

b. Install Selenium Chrome(or other web browers) Webdriver Extension
a dir can be found inside the folder
c. Install Selenium Client & WebDriver Language Bindings for Python: pip install selenium


===============
mashape_spider
==============
Usage:
scrapy crawl mashape -a readurl=https://www.mashape.com/george-vustrey/ultimate-weather-forecasts

It crawls the given url and get all the REST APIs of it.
The sample output is: api.json

================
urls
===============
Usage:
scrapy crawl urls -a pageno=10

It crawls the "https://www.mashape.com/explore?sort=developers&page=10" and fetches all the apps' urls
The sample output is: urls.txt

==============
Next Step:
==============
make spider fetch the whole set of mashape APIs;
store the data to MongoDB
test and validate on chrome 
