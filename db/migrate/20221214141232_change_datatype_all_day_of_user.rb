class ChangeDatatypeAllDayOfUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :all_day, :boolean
  end
end
