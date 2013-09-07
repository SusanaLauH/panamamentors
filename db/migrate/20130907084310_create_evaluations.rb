class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.date :evaluated
      t.string :mentor
      t.integer :evaluation

      t.timestamps
    end
  end
end
