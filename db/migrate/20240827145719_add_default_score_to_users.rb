class AddDefaultScoreToUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :score, :integer, default: 0
  end
end
