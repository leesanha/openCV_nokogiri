require 'open-uri'
require 'nokogiri'
class NokogiriController < ApplicationController
  def index
    @title = Array.new
    118145.downto(118135) do |c|
      doc = Nokogiri::HTML(open("http://www.slrclub.com/bbs/zboard.php?id=canon_d30_forum&page=#{c}"))
      # class 정보를 가져오기 위해 클래스 이름을 넣음.
      doc.css(".sbj > a").each do |x|
         @title << x.inner_text
      end
    end
  end
end
