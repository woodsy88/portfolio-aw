class CreateJobSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :job_skills do |t|
      t.integer :job_id
      t.integer :skill_id
    end
  end
end
