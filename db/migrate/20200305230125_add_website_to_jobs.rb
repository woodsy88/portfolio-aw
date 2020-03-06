class AddWebsiteToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :website, :string
  end
end
