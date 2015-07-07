class SearchController < ApplicationController
    layout 'user'
#action index
#author :Manh Quoc
#since    :12/05/2014
    def index
        @language= params[:language]
        @vietnamese_word = Vietnamese.select(:word_vietnamese).where({deleted:0})
        @japanese_word = Japanese.select(:word_japanese).where({deleted:0})
        if (params[:search])
            @language = params[:language]
            search = params[:search].strip
            if(@language=="vietnamese")
                @data = Vietnamese.search(search)
                find_vi(search)
            else
                @data = Japanese.search(search)
                find_ja(search)
            end
        end
    end
#get vocabulary , example language VN (json) for ajax
#author: Manh Quoc
#since : 16/05/2014
    def get_word_vi()
        @data = Vietnamese.find(params[:id]);
        @data.word_vietnamese =@data.word_vietnamese.force_encoding("UTF-8")
        @data.word_japanese =@data.word_japanese.force_encoding("UTF-8")
        @arr_translate = @data.word_japanese.split(';')
        @example =encode(Example.searchVi(@data.word_vietnamese))
        @arr = [@data,@arr_translate,@example]
        respond_to do |format|
             format.json { render json: @arr}
        end
    end
#get vocabulary , example language JA (json) for ajax
#author: Manh Quoc
#since : 16/05/2014
    def get_word_ja()
        @data = Japanese.find(params[:id]);
        @data.word_vietnamese =@data.word_vietnamese.force_encoding("UTF-8")
        @data.word_japanese =@data.word_japanese.force_encoding("UTF-8")
        @arr_translate = @data.word_vietnamese.split(';')
        @example =encode(Example.searchJa(@data.word_japanese))
        @arr = [@data,@arr_translate,@example]
        respond_to do |format|
             format.json { render json: @arr}
        end
    end
    private
#find  vocabulary , example language VN
#author: Manh Quoc
#since : 16/05/2014
    def find_vi(word)
        if word.length > 0
            row = Vietnamese.findByWord(word)
            if(row.length>0)
                @arr_translate = row[0].word_japanese.force_encoding("UTF-8").split(';')
                @examples = Example.searchVi(row[0].word_vietnamese)
                @result = row[0]
            end
        end
    end
#find  vocabulary , example language JA
#author: Manh Quoc
#since : 16/05/2014
    def find_ja(word)
        if word.length > 0
            row = Japanese.findByWord(word)
            if(row.length>0)
                @result = row[0]
                @arr_translate = row[0].word_vietnamese.force_encoding("UTF-8").split(';')
                @examples = Example.searchJa(row[0].word_japanese)
            end
        end
    end
#change encode UTF-8
#author: Manh Quoc
#since : 16/05/2014
    def encode(data)
        n = data.length-1
        for i in 0..n
            data[i].ex_japanese = data[i].ex_japanese.force_encoding("UTF-8")
            data[i].ex_vietnamese = data[i].ex_vietnamese.force_encoding("UTF-8")
        end
        return data
    end
end
