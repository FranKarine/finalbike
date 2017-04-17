class Fbike < ActiveRecord::Base
    
    def self.search(search_for)
        Fbike.where("name= ?",search_for)
    end
end
