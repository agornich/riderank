class TaxiprovidersController <ApplicationController
    
    def index
        @taxiproviders = Taxiprovider.all
    end


    def show
        @taxiprovider = Taxiprovider.find( params[:id] )
  
    end
    
    def new
        @taxiprovider = Taxiprovider.new
    end

    def edit
        @taxiprovider = Taxiprovider.find( params[:id] )
    end

    def create
            @taxiprovider = Taxiprovider.new( params[:taxiprovider].permit! )
        if @taxiprovider.save
            redirect_to taxiproviders_path
        else
            render :new
        end  
    end
    
    def destroy
        @taxiprovider = Taxiprovider.find( params[:id] )
        @taxiprovider.destroy
        flash[:notice] = "Usunieto korporację o ID: #{@taxiprovider.id}"
        redirect_to employees_path
    end

end