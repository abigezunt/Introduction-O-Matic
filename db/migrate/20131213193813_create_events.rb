class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.text :host
      t.text :keyword
    end
  end
end
