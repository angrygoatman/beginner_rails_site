class Sample
   	def hello
      	puts "Hello Ruby!"
   	end
end

class PostsController < ApplicationController
	def index
		@test = 'test'
		#object = Sample.new
		#@x = object.hello


		@y = 0  # loop through in the controller 
		ary = [1,2,3,4,5]
			ary.each do |i|
   				@y = i 
		end

		@alpha = 0 
		for a in 0..5
   			@alpha =  a 
		end



	end 

	def show
		post = Post.find(params[:id])
		#@posts = Post.all  
		#@stuff = post.title
	end 

	def create 
    	#@x = render plain: params[:post].inspect

    	@post = Post.new(post_params)   #not adding to sql
    	@post.save
    	redirect_to @post

    	#post = Post.new(:title => 'stuff')
		#post.save
		#@posts = Post.all

  	end 

  	def new

  	end 

  	private def post_params  #private
  		params.require(:post).permit(:title)
  	end 

end
