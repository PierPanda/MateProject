class CreateChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :challenges do |t|
      t.string :name
      t.integer :level
      t.string :format
      t.string :category
      t.text :content
      t.string :time
      t.integer :reward
      t.boolean :public

      t.timestamps
    end
  end
end
