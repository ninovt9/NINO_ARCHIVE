class ProjectsController < ApplicationController

  before_action :logged_in_user,    only: [:new, :index]
  #before_action :              ,    only: [:index]



  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(project_params)  
    add_user_id @project
    if @project.save
      flash[:success] = "创建成功"
      redirect_to @project
    else
      render 'new'
    end
  end
  
  private

    def project_params
      params.require(:project).permit(:name, :position,
                                   :developer)
    end
    
    def add_user_id(project)
      project.user_id = current_user.id
    end
    
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "请先登陆"
        redirect_to login_url
      end
    end
end


