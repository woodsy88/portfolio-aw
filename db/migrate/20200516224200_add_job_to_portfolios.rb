class AddJobToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_reference :portfolios, :job, null: false, foreign_key: true, :default => 1
  end
end
