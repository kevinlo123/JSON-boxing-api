class Heavyweight < ApplicationRecord   
   validates :rank, :name, :link, :heavyweights_boxer_id, :points, :age, :wins, :losses, :draws, presence: true
   self.table_name = 'heavyweights'   

   def self.cache_key(boxers)
      { serializer: 'boxers',stat_record: boxers.maximum(:updated_at) }
   end
end