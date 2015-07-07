class CreateJapaneses < ActiveRecord::Migration
  def change
    create_table :japaneses do |t|
      t.string :word_japanese
      t.string :word_vietnamese
      t.string :sound_word
      t.integer :deleted
      t.string :note

      t.timestamps
    end
  end
end
