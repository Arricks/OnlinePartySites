class Customers::HomesController < ApplicationController
	def top
	  @genre = Genre.all
	  @items = Item.all.shuffle.first(4)
	  @articles = Article.all.search(params[:search])
	end

	def about
	end
end
