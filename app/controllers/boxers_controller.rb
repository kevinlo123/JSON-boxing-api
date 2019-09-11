class BoxersController < ApplicationController
   rescue_from ActiveRecord::RecordNotFound, with: :show_not_found_errors		
   before_action :set_boxer, only: [:show, :update, :destroy]
   
   def index
      boxers = Boxer.all
      json = Rails.cache.fetch(Boxer.cache_key(boxers)) do
         { status: 'SUCCESS', message: 'Loaded all boxers', data: boxers, status: :ok }
      end
      render json: json
   end

   def create
      @boxer = Boxer.new(boxers_params)
      json = Rails.cache.fetch('boxers') do
         { status: 'SUCCESS', message: 'Created Boxer', data: @boxer, status: :created }
      end
      if @boxer.save
         render json: json	
      else
         render json: {status: 'ERROR', message: 'Couldnt respond to request', data: @boxer.error, status: :unprocessable_entity }
      end
   end

   def show
      json = Rails.cache.fetch('boxers') do
         { status: 'SUCCESS', message: 'Loaded Boxer', data: @boxer, status: :ok }
      end
      if @boxer
         render json: json	
      end
   end

   def update
      json = Rails.cache.fetch('boxers') do
         { status: 'SUCCESS', message: 'Updated Boxer', data: @boxer }	
      end
      if @boxer.update(boxers_params)
         render json: json
      else
         render json: @boxer.errors, status: :unprocessable_entity
      end
   end

   def destroy
      boxers = Boxer.all	
      json = Rails.cache.fetch('boxers') do
         {status: 'DESTROYED', message: 'Erased Boxer', data: @boxer, status: :deleted }        
      end	
      if @boxer.destroy
         render json: json
      else
         render json: {status: 'ERROR', message: 'Couldnt respond to request', data: boxers.error, status: :unprocessable_entity }		
      end
   end
   
   private 

      def show_not_found_errors(exception)
         render json: { status: 'ERROR', message: exception.message, status: :unprocessable_entity }
      end

      def boxers_params
         params.permit(:id,:name, :height, :weight, :nationality, :stance, :bouts, :wins, :losses, :division)			
      end

      def set_boxer
         @boxer = Boxer.find(params[:id])
      end
end
