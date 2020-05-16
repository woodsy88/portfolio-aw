class RemoveDateTextFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :date_text
  end
end
