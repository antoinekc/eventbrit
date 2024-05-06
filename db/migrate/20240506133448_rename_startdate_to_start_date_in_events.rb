class RenameStartdateToStartDateInEvents < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :startdate, :start_date
  end
end
