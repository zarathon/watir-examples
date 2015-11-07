require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new
browser.goto 'http://bit.ly/watir-example'

browser.text_field(:name=>'entry.1000000').set 'Watir'
browser.text_field(:name=>'entry.1000001').set 'I come here from Australia. \n The weather is great here.'

browser.radio(:value=>'Watir').set
browser.radio(:value=>'Selenium').set
browser.radio(:value=>'Selenium').clear
