class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :point
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
