class TprTsController < ApplicationController
  before_action :set_tpr_t, only: [:show, :edit, :update, :destroy]

  # GET /tpr_ts
  def index
    if params[:school]
      @tutees = TuteeT.where(:school => params[:school])
    else
      @tutees = TuteeT.all
    end
    @tpr_ts = TprT.all
  end

  # GET /tpr_ts/1
  def show
  end

  # GET /tpr_ts/new
  def new
    @tpr_t = TprT.new
  end

  # GET /tpr_ts/1/edit
  def edit
  end

  # POST /tpr_ts
  def create
    @tpr_t = TprT.new(tpr_t_params)
    @tpr_t.member_t = current_member_t #This allows name of member to be auto-associated
    @tpr_t.update_attribute(:tprdatetime,DateTime.now) #timestamp system
    if @tpr_t.save
      #flash[:notice] = 'TPR was successfully created.'
      redirect_to @tpr_t
    else
      render :new
    end
  end

  # PATCH/PUT /tpr_ts/1
  def update
    if @tpr_t.update(tpr_t_params)
      #flash[:notice] = 'TPR was successfully updated.'
      redirect_to @tpr_ts
      @tpr_t.update_attribute(:evaldatetime, DateTime.now) #timestamp system
    else
      render :edit
    end
  end

  # DELETE /tpr_ts/1
  def destroy
    @tpr_t.destroy
    #flash[:notice]  = 'TPR was successfully deleted.'
    redirect_to tpr_ts_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpr_t
      @tpr_t = TprT.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tpr_t_params
      params.require(:tpr_t).permit!
    end
end
