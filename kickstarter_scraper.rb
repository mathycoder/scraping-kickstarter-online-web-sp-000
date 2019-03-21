# require libraries/modules here
require 'nokogiri'
require 'pry'


def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = kickstarter.css("li.project.grid_4")
  #project_title = projects.css("h2.bbcard_name strong a").text
  image_link = projects.css("div.project-thumbnail a img").attribute("src").value
  
  
  binding.pry
end

create_project_hash