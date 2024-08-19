class CreateSteps < ActiveRecord::Migration[7.1]
  def change
    create_table :steps do |t|
      t.references :challenge, null: false, foreign_key: true
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
