class Client < ActiveRecord::Base
    has_many :holdings
    accepts_nested_attributes_for :holdings
end
