class ReferencesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @references = Reference.all
  end

  def show
    @reference = Reference.find(params[:id])
  end

  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      flash[:notice] = "Reference Created!"
      redirect_to  references_path
    else
      render :new
    end
  end

  def edit
    @reference = Reference.find(params[:id])
  end


  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      flash[:notice] = "Reference Updated!"
      redirect_to reference_path(@reference)
    else
      render :edit
    end
  end

  def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy
    flash[:notice] = "Reference Destroyed!"
    redirect_to references_path
  end

  private
  def reference_params
    params.require(:reference).permit(:name, :title, :company, :email)
  end

end
