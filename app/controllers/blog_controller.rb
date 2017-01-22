class BlogController < ApplicationController
	def index
		@blogs = Blog.all
	end

	def new
		# @blog = Blog.new
	end

	def create
		# debugger
		@blog = Blog.create(name: params["blog"]["name"], desc: params["blog"]["desc"] )
		redirect_to blog_index_path
	end

end
