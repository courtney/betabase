class ProblemsController < ApplicationController

  before_filter :login_required, :only => [:index, :show, :edit, :update, :new]
  before_filter :check_administrator_role, :only => [:destroy]

  def index
    @problems = Problem.find(:all, :conditions=>params[:problem], :order=>'grade desc')
  end

  def show
    @problem = Problem.find(params[:id])
  end
 
  def new
    @problem = Problem.new
  end

  def edit
    @problems = Problem.find(:all)
    @problem = Problem.find(params[:id])
  end

  def create
    @problem = Problem.new(params[:problem])

    if @problem.save
      flash[:notice] = 'Problem was successfully created.'
      redirect_to(@problem) 
    else
      render :action => "new" 
    end
  end

  def update
    @problem = Problem.find(params[:id])
    if @problem.update_attributes(params[:problem])
      flash[:notice] = 'Problem was successfully updated.'
      redirect_to(@problem)
    else
      render :action => "edit" 
    end
  end

  def destroy
    @problem = Problem.find(params[:id])
    @problem.destroy
    redirect_to(problems_url) 
  end
	
	def revert_to_version
		@problem = Problem.find( params[:id] )
		@problem.revert_to! params[:version_id]
		redirect_to :action => 'show', :id => @product
	end

	def show
		@problem = Problem.find(params[:id])
		if params[:version_id]
			@problem.revert_to params[:version_id]
		end
	end
end
