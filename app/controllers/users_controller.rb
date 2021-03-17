class UsersController < ApplicationController  

	def new  
		@user = Profile.new  
	end 

	def done  
		@message = "Complete"
	end 

	def edit  
		@user = Profile.find(params[:id])
	end 

	def update
		params.permit!
		@user = Profile.find(params[:id])
		@user.update(params[:user])
		redirect_to('/done')
	end

	def create  
		params.permit!
		@user = Profile.new(params[:user])  
		if @user.save  
			redirect_to :controller => "users", :action => "edit", :id => @user.id
		else  
			render "new"  
		end  
	end 

	private
	## Strong Parameters 
	def user_params
		params.require(:user).permit(:email, :password_hash, :password_salt, :password, :password_confirmation)
	end	

end  
