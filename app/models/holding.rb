class Holding < ActiveRecord::Base
    belongs_to :client, touch: true
    validates_presence_of :name, :client_id

    def recvalue
        @recvalue = value.to_i + recommendation.to_i
    end
end
