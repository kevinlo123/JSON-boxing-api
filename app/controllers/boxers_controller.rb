class BoxersController < ApplicationController	
   before_action :set_boxer, only: [:show, :update, :destroy]
   
   def index
      boxers = Boxer.all
      # json = Rails.cache.fetch(Boxer.cache_key(boxers)) do
      #    BoxerSerializer.new(boxers).serialized_json
      # end
      render json: BoxerSerializer.new(boxers).serialized_json   
   end

   def create
      @boxer = Boxer.create!(boxers_params)
      json = BoxerSerializer.new(@boxer).serialized_json
      if @boxer
         render json: json 
      end     
   end

   def show
      json = BoxerSerializer.new(@boxer).serialized_json
      if @boxer
         render json: json         
      end
   end

   def update
      if @boxer.update(boxers_params)
         render json: BoxerSerializer.new(@boxer).serialized_json
      end
   end

   def destroy
      if @boxer.destroy
         render json: BoxerSerializer.new(@boxer).serialized_json                	
      end
   end
   
   private 

      def boxers_params
         params.permit(:id, :name, :height, :weight, :nationality, :stance, :bouts, :wins, :losses, :division)			
      end

      def set_boxer
         @boxer = Boxer.find(params[:id])
      end
end
