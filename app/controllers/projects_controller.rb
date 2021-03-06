class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)
    Rails.logger.debug "DEBUG: Creating a new project"
    if @project.save
      flash[:notice] = 'Project has been created.'
      redirect_to @project
    else
      render :new
      flash.now[:error] = 'Project could not be saved.'
    end
  end
  
  def show
    @project = Project.find(params[:id])    
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @project = Project.find(params[:id])    
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was succesfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def project_params
      params.require(:project).permit(:name, :technologies_used)
    end

end
