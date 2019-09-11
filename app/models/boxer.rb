class Boxer < ApplicationRecord   
   def self.cache_key(boxers)
      {
         serializer: 'boxers',
         stat_record: boxers.maximum(:updated_at)
      }
   end
end
