require 'open-uri'
require 'nokogiri'
    118145.downto(118135) do |c|
    doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=canon_d30_forum&page=#{c}"))
    # class 정보를 가져오기 위해 클래스 이름을 넣음.
    doc.css(".sbj > a").each do |x|
       puts x.inner_text if x.inner_text.include?("?")
    end
end