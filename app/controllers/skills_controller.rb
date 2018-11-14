class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update]

   #petergate - authetication for different user roles at controller level
 access all: [:show, :index], user: {except: [ :new, :create, :update, :edit]}, site_admin: :all
 
  def new
     @skill = Skill.new
  end
  
  def create
		@skill = Skill.new(skill_params)
	#	@skill.user_id = current_user.id

		if @skill.save
			redirect_to @skill, notice: 'Your skill was created successfully'
		else
			render :new
		end    
    
  end
  
  def edit
  end
  
  def update
        @skill.update(skill_params)
        redirect_to @skill, notice: 'Your skill was created successfully'    
  end

  def show
     @skill_jobs = @skill.jobs
  end
  
  def index
    @skills = Skill.all
  end

  private


  def set_skill
    @skill = Skill.find(params[:id])
  end

    def skill_params
        params.require(:skill).permit(:title, :percent_utilized, :badge, :area)   
    end   
  
end
