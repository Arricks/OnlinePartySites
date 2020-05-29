class Customers::HomesController < ApplicationController
	def top
	  if params[:search]
	  	@items = Item.all.search(params[:search])
	  else
	  	@items = Item.all.shuffle.first(4)
	  end
	end

	def about
	end
end
