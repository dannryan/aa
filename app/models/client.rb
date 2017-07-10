class Client < ActiveRecord::Base
    attr_reader :ctotal
    has_many :holdings
    accepts_nested_attributes_for :holdings, allow_destroy: true
    
  def ctotal
  @ctotal = Holding.where(:client_id => id).sum(:value)
  end

  def rtotal
  @rtotal = ctotal + changetotal
  end
  
  def changetotal
  @changetotal = Holding.where(:client_id => id).sum(:recommendation)
  end 

  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
  

  
end
