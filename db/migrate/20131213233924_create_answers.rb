class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :response
      t.belongs_to :question, index: true
      t.belongs_to :user, index: true
    end
  end
end
