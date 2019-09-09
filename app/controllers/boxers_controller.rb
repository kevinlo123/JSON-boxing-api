class BoxersController < ApplicationController
   rescue_from ActiveRecord::RecordNotFound, with: :show_not_found_errors		
   before_action :set_boxer, only: [:show, :update, :destroy]
   def index
      @boxers = Boxer.all
      render json: {status: 'SUCCESS', message: 'Loaded all boxers', data: @boxers}, status: :ok
   end

   def create
      @boxer = Boxer.new(boxers_params)
      if @boxer.save
         render json: {status: 'SUCCESS', message: 'Created Boxer', data: @boxer}, status: :created		
      else
         render json: {status: 'ERROR', message: 'Couldnt respond to request', data: @boxer.error}, status: :unprocessable_entity					
      end
   end

   def show
      if @boxer
         render json: {status: 'SUCCESS', message: 'Loaded Boxer', data: @boxer}, status: :ok		
      end
   end

   def update
      if @boxer.update(boxers_params)
         render json: {status: 'SUCCESS', message: 'Updated Boxer', data: @boxer}		
      else
         render json: @boxer.errors, status: :unprocessable_entity
      end
   end

   def destroy
      @boxers = Boxer.all		
      if @boxer.destroy
         render json: {status: 'DESTROYED', message: 'Erased Boxer', data: @boxer}, status: :deleted
      else
         render json: {status: 'ERROR', message: 'Couldnt respond to request', data: @boxers.error}, status: :unprocessable_entity					
      end
   end
   
   private 

      def show_not_found_errors(exception)
         render json: {status: 'ERROR', message: exception.message}, status: :unprocessable_entity
      end

      def boxers_params
         params.permit(:id,:name, :height, :weight, :nationality, :stance, :bouts, :wins, :losses, :division)			
      end

      def set_boxer
         @boxer = Boxer.find(params[:id])
      end
end
