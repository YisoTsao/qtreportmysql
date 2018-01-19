class EflashssdsController < ApplicationController
	before_action :set_eflashssd, only: [:show, :edit, :update, :destroy ]

  def index
  	@eflashssds = Eflashssd.all
  end

  def new
  	@eflashssd = Eflashssd.new
  end

  def show
  	respond_to do |format|
            format.html 
            format.json 
            #format.pdf  { render template: 'handies/report' , pdf: 'Report', layout: 'pdf.html', location: @handy } 
            end 
  end


  def edit
  end

def create
    @eflashssd = Eflashssd.new(eflashssd_params)
      #@eflashssd.user = current_user
      if @eflashssd.save
        redirect_to @eflashssd
      else
        render 'new'    
      end
  end

def update
      if @eflashssd.update(eflashssd_params)
        redirect_to @eflashssd
        render 'show' 
      else
        render 'edit'
      end
    
  end

  
  def destroy
    @eflashssd.destroy
       redirect_to eflashssds_url 
      
   end

def import   
  Eflashssd.import(params[:file])
  redirect_to eflashssds_url, notice: "Eflashssds imported."
end

private 
  	def set_eflashssd
      @eflashssd = Eflashssd.find(params[:id])
    end

	

def eflashssd_params
	params.require(:eflashssd).permit(:pccitem, :receivedate, :startdate, :finishdate, 
        :solution, :capacity, :qual, :owner, :prodname, :prodpn, :desc,
        :fwvversion, :ftype, :pcbvers, :testres , :expl, :rpname, :rpdate, :approvename, :remark)
end
	

end
