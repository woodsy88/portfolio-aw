class AddCurrentToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :current, :boolean
  end
end
