class BoxerSerializer
  include FastJsonapi::ObjectSerializer
  cache_options enabled: true, cache_length: 12.hours  
  attributes :name, :height, :weight, :nationality, :stance, :bouts, :wins, :losses, :division
end
