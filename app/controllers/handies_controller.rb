class HandiesController < InheritedResources::Base
	before_action :set_handy, only: [:show, :edit, :update, :destroy, :report ]
def index
	@handies = Handy.all
end

def show

end
def new
	@handy = Handy.new
end
def edit

end

def create
    @handy = Handy.new(handy_params)
    respond_to do |format|
      if @handy.save
        format.html { redirect_to @handy}
        format.json { render :show, status: :created, location: @handy }
      else
        format.html { render :new }
        format.json { render json: @handy.errors, status: :unprocessable_entity }
      end
    end
  end


def update
    respond_to do |format|
      if @handy.update(handy_params)
        format.html { redirect_to @handy}
        format.json { render :show, status: :ok, location: @handy }
      else
        format.html { render :edit }
        format.json { render json: @handy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handies/1
  # DELETE /handies/1.json
  def destroy
    @handy.destroy
    respond_to do |format|
      format.html { redirect_to handies_url }
      format.json { head :no_content }
    end
  end

  private

  def set_handy
      @handy = Handy.find(params[:id])
    end

    def handy_params
      params.require(:handy).permit(:item, :pccitem, :receivedate, :startdate, :finishdate, :solution, 
      	:schedule, :capacity, :qual, :read, :write, :owner, :prodname, :desc, :prodpn, :fwvversion, :ftype,
      	 :pcbvers, :testres, :expl, :rpname, :rpdate, :approvename, :explain, :remark)
    end
end

