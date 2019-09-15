class Boxer < ApplicationRecord   
   validates :name, :height, :weight, :nationality, :stance, :bouts, :wins, :losses, :division, presence: true
   
   def self.cache_key(boxers)
      { serializer: 'boxers',stat_record: boxers.maximum(:updated_at) }
   end
end
