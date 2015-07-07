require 'test_helper'
#author: Manh Quoc
#since : 20/05/2014
class VietnameseTest < ActiveSupport::TestCase
#function test search result with param 'my'
    def test_searchVi
        vn = Vietnamese.search('My')
        if vn.length==2
            assert true
        else
            assert false, "search err"
        end
    end
#function test search result with param ''
    def test_searchVi_param_null
        vn = Vietnamese.search('')
        if vn.length==2
            assert true
        else
            assert false, "search err"
        end
    end
#function test search result with param 'MyString'
    def test_searchVi_full_string
        vn = Vietnamese.search('MyString')
        if vn.length==2
            assert true
        else
            assert false, "search err"
        end
    end
#function test search result with param 'null'
    def test_searchVi_param_eq_null
        vn = Vietnamese.search('null')
        if vn.length>0
            assert false, "search err"
        else
            assert true
        end
    end
#function test insert row
    def test_insert
        assert_difference('Vietnamese.count',1,'insert err') do
            vi = Vietnamese.new({'word_vietnamese'=>'123','word_japanese'=>'456','sound_word'=>'123.mp3','note'=>'new row','deleted'=>'0'})
            vi.save
        end
    end
#function test update row
    def test_update
        vi = Vietnamese.find('298486374')
        vi.update({'word_vietnamese'=>'MyString2'})
        vi1=Vietnamese.find('298486374')
        assert_equal "MyString2",vi1.word_vietnamese,"update err"
    end
#function test delete row
    def test_delete
        assert_difference('Vietnamese.count',-1,'delete err') do
            vi = Vietnamese.find('298486374')
            vi.delete
        end
    end
end
