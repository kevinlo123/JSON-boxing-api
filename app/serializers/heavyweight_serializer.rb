class HeavyweightSerializer
  include FastJsonapi::ObjectSerializer
  cache_options enabled: true, cache_length: 12.hours  
  attributes :id, :rank, :name, :link, :heavyweights_boxer_id, :points, :age, :wins, :losses, :draws
end
