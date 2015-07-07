#encoding: utf-8
class Vietnamese < ActiveRecord::Base
    validates :word_japanese, presence: true
    validates :word_vietnamese, presence: true
    #search all word in data (like)
    #author : Manh Quoc
    #since : 12/08/2014
    def self.search (param)
        result = where("deleted = 0 and word_vietnamese LIKE '%#{param}%'")
        if (result.length == 0)
            param = param.downcase
            result = where("deleted = 0 and word_vietnamese_replace LIKE '%#{param}%'")
        end
        result
    end

    #search word in data
    #author : Manh Quoc
    #since : 19/08/2014
    def self.findByWord(word)
        result = where({word_vietnamese: word, deleted: 0})
        if (result.length == 0)
            word = word.downcase
            result = where({word_vietnamese_replace: word, deleted: 0})
        end
        result
    end

    #search for admin
    #author : Manh Quoc
    #since : 19/08/2014
    def self.admin_search (param)
        where("word_vietnamese LIKE '%#{param}%'")
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

    # replace char in string language Vietnamese
    # author : Manh Quoc
    #since : 21/05/2014
    def self.replace_special_chars(str1)
        str = str1.downcase
        str.gsub! /à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ|À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ|å/, 'a'
        str.gsub! /è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ|È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ|ë/, 'e'
        str.gsub! /ì|í|ị|ỉ|ĩ|Ì|Í|Ị|Ỉ|Ĩ|î/, 'i'
        str.gsub! /ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ|Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ|ø/, 'o'
        str.gsub! /ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ|Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ|ů|û/, 'u'
        str.gsub! /ỳ|ý|ỵ|ỷ|ỹ|Ỳ|Ý|Ỵ|Ỷ|Ỹ/, 'y'
        str.gsub! /đ|Đ/, 'd'
        str.gsub! /ç/, 'c'
        str.gsub! /[^\s\p{Ll}\p{Lm}\p{Lo}\p{Lt}\p{Lu}\p{Nd}]/mu, ''
        str.gsub! /\\s+/, ' '
        return str
    end
end
