class JobsController < ApplicationController
  before_action :set_job, only: [:edit, :show, :update, :destroy] 
 
 #petergate - authetication for different user roles at controller level
 access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

    def index
        @jobs = Job.all
    end

    def new
        @job = Job.new
    end

    def show
    end

    def create
        @job = Job.new(job_params)
        respond_to do  |format|
            if @job.save
                format.html {redirect_to(jobs_path)}
            else
                format.html { render 'new' }
            end
        end        
    end

    def edit    
    end

    def destroy
        @job.destroy
        respond_to do |format|
            format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
        end        
    end

    def update
        respond_to do |format|
            if @job.update(job_params)
                format.html { redirect_to (jobs_path) }
                else
                format.html { render :edit }
            end  
        end           
    end

    private

    def set_job
        @job = Job.find(params[:id])
    end

    def job_params
        params.require(:job).permit(:company, 
                                    :job_title, 
                                    :body, 
                                    :website,
                                    :position,
                                    :date_text,
                                    :start_date,
                                    :end_date,
                                    :current,
                                    skill_ids: []
                                    )
    end


end
