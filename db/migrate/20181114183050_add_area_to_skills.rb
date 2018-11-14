class AddAreaToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :area, :integer
  end
end
