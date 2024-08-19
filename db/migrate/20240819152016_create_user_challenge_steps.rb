class CreateUserChallengeSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :user_challenge_steps do |t|
      t.references :user_challenge, null: false, foreign_key: true
      t.references :step, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
