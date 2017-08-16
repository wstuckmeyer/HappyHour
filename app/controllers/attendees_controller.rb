class AttendeesController < ApplicationController
	
	def index 
		@attend = Attendee.all
		
	end

	def edit
		@attend = Attendee.find(params[:id])
		puts @attend.inspect
	end

	def update
		
		@attend = Attendee.find(params[:id])
		@attend.update_attributes(fname: params[:attendee][:fname], lname: params[:attendee][:lname])
 	 	puts @attend
 	 	redirect_to action: 'index'
 	 end

 	 def show
 	 	redirect_to action:'index'
 	 end
	def destroy
		Attendee.find(params[:id]).delete
		
		redirect_to action: 'index'
	end
	def new
		
		@attend=Attendee.new

	end
	def create
		
		@attend = Attendee.create(fname: params[:attendee][:fname], lname: params[:attendee][:lname], age: params[:attendee][:age].to_i, likesbeer: params[:attendee][:likesbeer])
		redirect_to action:'index'
	end
end



#<Attendee id: 3, fname: "Annie", lname: "Bob", age: 33, likesbeer: true, created_at: "2017-08-15 18:52:52", updated_at: "2017-08-15 18:52:52">

#<ActiveRecord::Relation [#<Attendee id: 3, fname: "Annie", lname: "Bob", age: 33, likesbeer: true, created_at: "2017-08-15 18:52:52", updated_at: "2017-08-15 18:52:52">]>