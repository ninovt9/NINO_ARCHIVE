class ProjectsController < ApplicationController

  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      # 处理成功情况
    else
      render 'new'
    end
  end

  def project_params
    params.require(:project).permit(:name, :position,
                                 :developer)
  end
end


