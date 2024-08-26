class ChangeColumnToChallenges < ActiveRecord::Migration[7.1]
  def change
    change_column :challenges, :level, :string
  end
end
