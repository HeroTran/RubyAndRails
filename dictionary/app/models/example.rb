class Example < ActiveRecord::Base
  def self.searchVi (param)
    where("ex_vietnamese LIKE '%#{param}%'")
  end

  def self.searchJa (param)
    where("ex_japanese LIKE '%#{param}%'")
  end
end
