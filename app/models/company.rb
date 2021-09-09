class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies               #like an sql join table. this is the purpose

    def give_freebie(dev, item_name, value)
        return Freebie.create(item_name: item_name, value: value, company_id: id, dev_id: dev.id)      #id = self.id (instance of a company)

    end

    def self.oldest_company
        return Company.all.order(:founding_year).first
    end
end
