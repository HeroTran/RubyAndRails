class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :ex_japanese
      t.string :ex_vietnamese
      t.integer :deleted

      t.timestamps
    end
  end
end
