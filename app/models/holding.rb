class Holding < ActiveRecord::Base
    belongs_to :client, touch: true

    def recvalue
        @recvalue = value.to_i + recommendation.to_i
    end
end
