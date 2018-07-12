class CreateBlogSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_skills do |t|
        t.integer :blog_id
        t.integer :skill_id         
    end
  end
end
