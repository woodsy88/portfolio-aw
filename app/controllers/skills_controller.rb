class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

   #petergate - authetication for different user roles at controller level
 access all: [:show, :index], user: {except: [ :new, :create, :update, :edit]}, site_admin: :all
 
  def new
     @skill = Skill.new
  end
  
  def create
		@skill = Skill.new(skill_params)
	#	@skill.user_id = current_user.id

    if @skill.save
      Analytics.track(
          user_id: current_user.id,
          event: 'Created Skill',
          properties: { 
              title: @skill.title, 
              area: @skill.area
             }
            ) 

			redirect_to @skill, notice: 'Your skill was created successfully'
		else
			render :new
		end    
    
  end
  
  def edit
  end
  
  def update
        @skill.update(skill_params)
        redirect_to skills_path, notice: 'Your skill was created successfully'    
  end

  def show
     @skill_jobs = @skill.jobs
  end
  
  def index
    @skills = Skill.all
    @design_skills = Skill.where(area: 'design')
    @development_skills = Skill.where(area: 'development')
    @management_skills = Skill.where(area: 'management')
    @marketing_skills = Skill.where(area: 'marketing')    
  end

   def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to skills_url, notice: 'Skill was successfully destroyed.' }
    end
   end

  private


  def set_skill
    @skill = Skill.find(params[:id])
  end

    def skill_params
        params.require(:skill).permit(:title, :percent_utilized, :badge, :area)   
    end   
  
end
