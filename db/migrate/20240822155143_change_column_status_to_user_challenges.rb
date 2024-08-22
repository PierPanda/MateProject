class ChangeColumnStatusToUserChallenges < ActiveRecord::Migration[7.1]
  def change
    change_column_default :user_challenges, :done, from: nil, to: false
  end
end
