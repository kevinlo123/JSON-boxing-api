class HeavyweightsController < ApplicationController	
   before_action :set_heavyweight, only: [:show, :update, :destroy]
   
   def index
      @boxers = Heavyweight.all
      render json: HeavyweightSerializer.new(@boxers).serialized_json    
      # render json: @boxers     
   end

   def create
      @boxer = Heavyweight.create!(boxers_params)
      json = HeavyweightSerializer.new(@boxer).serialized_json
      if @boxer
         render json: json 
      end     
   end

   def show
      json = HeavyweightSerializer.new(@boxer).serialized_json
      if @boxer
         render json: json         
      end
   end

   def update
      if @boxer.update(boxers_params)
         render json: HeavyweightSerializer.new(@boxer).serialized_json
      end
   end

   def destroy
      if @boxer.destroy
         render json: HeavyweightSerializer.new(@boxer).serialized_json                	
      end
   end
   
   private 

      def boxers_params
         params.permit(:rank, :name, :link, :heavyweights_boxer_id, :points, :age, :wins, :losses, :draws)			
      end

      def set_heavyweight
         @boxer = Heavyweight.find(params[:id])
      end
end