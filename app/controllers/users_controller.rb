class UsersController < ApplicationController

	def index
	end

	def new
		@user = User.new
		respond_to do | format |
			format.html
		end
	end

	def create
		@user = User.new(params[:user])

		respond_to do |format|
		  if @user.save
		    format.html { redirect_to @user, notice: 'Your registration was successfull. Now you can login.' }
		  else
		    format.html { render action: "new" }
		  end
		end
	end

	def show
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy

		respond_to do |format|
		  format.html { redirect_to users_url }
		end
	end
end 