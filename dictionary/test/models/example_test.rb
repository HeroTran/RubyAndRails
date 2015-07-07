require 'test_helper'
#author: Manh Quoc
#since : 20/05/2014

class ExampleTest < ActiveSupport::TestCase
#function test search Vi result with param 'my'
    def test_searchVi
        ex = Example.searchVi('My')
        if ex.length>0
            assert true
        else
            assert false,"search err"
        end
    end
#function test search Vi result with param ''
    def test_searchVi_all
        ex = Example.searchVi('')
        count = Example.count
        if ex.length == count
            assert true
        else
            assert false,"search err"
        end
    end
#function test search Ja result with param 'my'
    def  test_searchJa
        ex = Example.searchJa('My')
        if ex.length>0
            assert true
        else
            assert false, "search err"
        end
    end
#function test search Ja result with param 'my'
    def test_searchJa_all
        ex = Example.searchJa('')
        count = Example.count
        if ex.length == count
            assert true
        else
            assert false,"search err"
        end
    end
#function test insert row
    def test_insert
        assert_difference('Example.count',1,'insert err') do
            ex = Example.new({'ex_japanese'=>'123','ex_vietnamese'=>'456','deleted'=>'0'})
            ex.save
        end
    end
#function test update row
    def test_update
        ex = Example.find('298486374')
        ex.update({'ex_japanese'=>'MyString2'})
        ex1=Example.find('298486374')
        assert_equal "MyString2",ex1.ex_japanese,"update err"
    end
#function test delete row
    def test_delete
        assert_difference('Example.count',-1,'delete err') do
            ex = Example.find('298486374')
            ex.delete
        end
    end
end
