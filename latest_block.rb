require 'selenium-webdriver'

#initialize firefox web browser
driver = Selenium::WebDriver.for :firefox
driver.get("https://goerli.etherscan.io/")

#maximize window
driver.manage.window.maximize

block_id = driver.find_element(:css,"html body#body div.wrapper main#content div.container.space-bottom-1.mt-n5 div.row.mb-5 div.col-lg-6.mb-4.mb-lg-0 div.card.h-100 div.js-scrollbar.card-body.overflow-hidden.mCustomScrollbar._mCS_1.mCS-autoHide div#mCSB_1.mCustomScrollBox.mCS-minimal-dark.mCSB_vertical.mCSB_outside div#mCSB_1_container.mCSB_container div.row div.col-sm-4 div.media.align-items-sm-center.mr-4.mb-1.mb-sm-0 div.media-body a").text
puts ("Latest Block Number = #{block_id}")
click_id = driver.find_element(:css,"html body#body div.wrapper main#content div.container.space-bottom-1.mt-n5 div.row.mb-5 div.col-lg-6.mb-4.mb-lg-0 div.card.h-100 div.js-scrollbar.card-body.overflow-hidden.mCustomScrollbar._mCS_1.mCS-autoHide div#mCSB_1.mCustomScrollBox.mCS-minimal-dark.mCSB_vertical.mCSB_outside div#mCSB_1_container.mCSB_container div.row div.col-sm-4 div.media.align-items-sm-center.mr-4.mb-1.mb-sm-0 div.media-body a").click

driver.quit
