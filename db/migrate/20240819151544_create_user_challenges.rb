class CreateUserChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :user_challenges do |t|
      t.references :user, null: false, foreign_key: true
      t.references :challenge, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.boolean :done

      t.timestamps
    end
  end
end
