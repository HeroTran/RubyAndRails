class CreateVietnameses < ActiveRecord::Migration
  def change
    create_table :vietnameses do |t|
      t.string :word_vietnamese
      t.string :word_japanese
      t.string :sound_word
      t.integer :deleted
      t.string :note

      t.timestamps
    end
  end
end
