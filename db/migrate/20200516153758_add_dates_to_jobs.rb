class AddDatesToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :start_date, :date
    add_column :jobs, :end_date, :date
  end
end
