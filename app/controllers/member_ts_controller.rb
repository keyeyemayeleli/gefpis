class MemberTsController < ApplicationController

  # GET /member_ts
  def index
    if params[:arm]
      @member_ts = MemberT.where(:membership => params[:arm]).order(:last_name)
    else
      @member_ts = MemberT.order(:last_name)
    end
    render 'member_ts/index'
  end

  # GET /member_ts/1
  def show
    @member_t = MemberT.find(params[:id])

    render 'member_ts/show'
  end

    def update
    if @member_t.update(member_t_params)
      redirect_to @module_t, notice: 'Module was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @member_t = MemberT.find(params[:id])
    @member_t.destroy

    if @member_t.destroy
      redirect_to member_ts_path, notice: "Member Deleted."
    end
  end
  def tpr_t_params
     params.require(:member_t).permit!
  end
end
