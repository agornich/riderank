class RidesController < ApplicationController
    
    def index
        @rides = Ride.all
    end


    def show
        @ride = Ride.find( params[:id] )
    end
    
    def new
        @ride = Ride.new
    end

    def edit
        @ride = Ride.find( params[:id] )
    end

    def create
            @ride = Ride.new( params[:ride].permit! )
        if @ride.save
            redirect_to rides_path
        else
            render :new
        end  
    end
    
    def destroy
        @ride = Ride.find( params[:id] )
        @ride.destroy
        flash[:notice] = "Usunieto przejazd o ID: #{@ride.id}"
        redirect_to rides_path
    end
    
    def set_ride
    @ride = Ride.find(params[:id])
  end

end
