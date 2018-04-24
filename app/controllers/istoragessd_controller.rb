class IstoragessdController < ApplicationController
	before_action :set_istoragessd, only: [:show, :edit, :update, :destroy ]
  def index
  	@istoragessd = Istoragessd.all 
  end

  def new
  	@istoragessd = Istoragessd.new
  end

  def show
  end

  def create
  	@istoragessd = Istoragessd.new(istoragessd_params)
  	@istoragessd.user = current_user
  	if @istoragessd.save
  		redirect_to @istoragessd
  		else
        render 'new'    
      	end
  end

  def update
  	if @istoragessd.update(istoragessd_params)
        render 'show' 
      else
        render 'edit'
      end
  end

  def edit
  end

  def destroy
  	@istoragessd.destroy
  	redirect_to istoragessds_url 
  end

  private 

  	def set_istoragessd
  @istoragessd = Istoragessd.find(params[:id])
	end

	def istoragessd_params
		params.require(:istoragessd).permit(:pc1os,:pc1mb,:pc1vendor,:pc1chip,:pc1bios,
			:pc1interface,:pc1basic,:pc1comp32,:pc1burnin,:pc1iometer,:pc1fat32,:pc1ntfs,
			:pc1exfat,:pc1result,:pc1install7,:pc1reboot7,:pc2os,:pc2mb,:pc2vendor,:pc2chip,
			:pc2bios,:pc2interface,:pc2basic,:pc2fat32,:pc2ntfs,:pc2exfat,:pc2result,:pc2install7,
			:pc2installfedo,:pc2reboot81,:pc3os,:pc3mb,:pc3vendor,:pc3chip,:pc3bios,:pc3interface,
			:pc3basic,:pc3comp32,:pc3burnin,:pc3iometer,:pc3fat32,:pc3ntfs,:pc3exfat,:pc3result,
			:pc3install10,:pc3reboot10,:pc4os,:pc4mb,:pc4vendor,:pc4chip,:pc4bios,:pc4interface,
			:pc4result,)
	end
end
