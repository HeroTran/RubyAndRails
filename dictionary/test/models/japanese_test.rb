require 'test_helper'

#author: Manh Quoc
#since : 20/05/2014
class JapaneseTest < ActiveSupport::TestCase
    #funtion test search result with param 'my'
    def test_searchJa
        ja = Japanese.search('My')
        if ja.length==2
            assert true
        else
            assert false, "search err"
        end
    end

    #funtion test search result with param ''
    def test_searchJa_param_null
        ja = Japanese.search('')
        if ja.length==2
            assert true
        else
            assert false, "search err"
        end
    end

    #funtion test search result with param 'MyString'
    def test_searchJa_param_full_string
        ja = Japanese.search('MyString')
        if ja.length==2
            assert true
        else
            assert false, "search err"
        end
    end

    #funtion test search result with param 'null'
    def test_searchJa_param_eq_null
        ja = Japanese.search('null')
        if ja.length>0
            assert false, "search err"
        else
            assert true
        end
    end

    #function test insert row
    def test_insert
        assert_difference('Japanese.count',1,'insert err') do
            ja = Japanese.new({'word_vietnamese'=>'123','word_japanese'=>'456','sound_word'=>'123.mp3','note'=>'new row','deleted'=>'0'})
            ja.save
        end
    end

    #function test update row
    def test_update
        ja = Japanese.find('298486374')
        ja.update({'word_japanese'=>'MyString2'})
        ja1=Japanese.find('298486374')
        assert_equal "MyString2",ja1.word_japanese,"update err"
    end

    #function test delete row
    def test_delete
        assert_difference('Japanese.count',-1,'delete err') do
            ja = Japanese.find('298486374')
            ja.delete
        end
    end
end
