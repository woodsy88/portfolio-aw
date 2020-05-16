class RemovePositionFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :position
  end
end
