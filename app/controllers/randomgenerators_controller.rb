class RandomgeneratorsController < ApplicationController
  def show
    query = params[:query] # retrieve randomgenerator ID from URI route
    @randomgenerator = Randomgenerator.find(query) # look up randomgenerator by unique ID
    # will render app/views/randomgenerators/show.<extension> by default
  end

  def index
    @randomgenerator = Randomgenerator.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @randomgenerator = Randomgenerator.create!(params[:randomgenerator])
    flash[:notice] = "#{@randomgenerator.title} was successfully created."
    redirect_to randomgenerator_path
  end

  def edit
    @randomgenerator = Randomgenerator.find params[:query]
  end

  def update
    @randomgenerator = Randomgenerator.find params[:query]
    @randomgenerator.update_attributes!(params[:randomgenerator])
    flash[:notice] = "#{@randomgenerator.title} was successfully updated."
    redirect_to randomgenerator_path(@randomgenerator)
  end

  def destroy
    @randomgenerator = Randomgenerator.find(params[:query])
    @randomgenerator.destroy
    flash[:notice] = "Randomgenerator '#{@randomgenerator.title}' deleted."
    redirect_to randomgenerators_path
  end


end
