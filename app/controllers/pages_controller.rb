class PagesController < ApplicationController
  def home
  end

  def about
  	@page_title = 'Salon venčanica Snežana | O nama'
  end

  def contact
  	@page_title = 'Salon venčanica Snežana | Kontakt'
  end
end
