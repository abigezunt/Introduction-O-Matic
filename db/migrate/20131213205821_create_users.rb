class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :first_answer
      t.text :second_answer
      t.text :third_answer
      t.references :event, index: true

      t.timestamps
    end
  end
end


