class AddAcquiredToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :acquired, :boolean
  end
end
