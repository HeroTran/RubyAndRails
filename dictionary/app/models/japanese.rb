class Japanese < ActiveRecord::Base
  validates :word_japanese, presence: true
  validates :word_vietnamese, presence: true

    #search all word in data (like)
    #author : Manh Quoc
    #since : 12/08/2014
    def self.search (param)
        where("deleted = 0 and word_japanese LIKE '%#{param}%'")
    end
    #search word in data
    #author : Manh Quoc
    #since : 19/08/2014
    def self.findByWord(word)
        where({word_japanese: word, deleted: 0})
    end
    #search for admin
    #author : Manh Quoc
    #since : 19/08/2014
    def self.admin_search (param)
        where("word_japanese LIKE '%#{param}%'")
    end
    def self.upload(file_name, folder)
        uploaded_io = file_name
        uploaded_io.original_filename = "#{(Time.now.to_i.to_s + Time.now.usec.to_s).ljust(16, '0')}#{File.extname(uploaded_io.original_filename)}"
        file_name = uploaded_io.original_filename
        File.open(Rails.root.join('public', folder, uploaded_io.original_filename), 'wb') do |file|
            file.write(uploaded_io.read)
        end
        return file_name
    end
end
