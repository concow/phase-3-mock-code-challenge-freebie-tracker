class Dev < ActiveRecord::Base
    has_many :freebies

    def received_one?(item_name)            #will return true or false with ?

    end

    def give_away(dev, freebie)
      freebie.update(dev: dev)
    end 
end
