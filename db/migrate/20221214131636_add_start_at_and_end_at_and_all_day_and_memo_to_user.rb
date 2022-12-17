class AddStartAtAndEndAtAndAllDayAndMemoToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :start_at, :date
    add_column :users, :end_at, :date
    add_column :users, :all_day, :string
    add_column :users, :memo, :text
  end
end
