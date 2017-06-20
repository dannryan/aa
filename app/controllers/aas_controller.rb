class AasController < ApplicationController
  before_action :set_aa, only: [:show, :edit, :update, :destroy]

  # GET /aas
  # GET /aas.json
  def index
    @aas = Aa.all
  end

  # GET /aas/1
  # GET /aas/1.json
  def show
  end

  # GET /aas/new
  def new
    @aa = Aa.new
  end

  # GET /aas/1/edit
  def edit
  end

  # POST /aas
  # POST /aas.json
  def create
    @aa = Aa.new(aa_params)

    respond_to do |format|
      if @aa.save
        format.html { redirect_to @aa, notice: 'Aa was successfully created.' }
        format.json { render :show, status: :created, location: @aa }
      else
        format.html { render :new }
        format.json { render json: @aa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aas/1
  # PATCH/PUT /aas/1.json
  def update
    respond_to do |format|
      if @aa.update(aa_params)
        format.html { redirect_to @aa, notice: 'Aa was successfully updated.' }
        format.json { render :show, status: :ok, location: @aa }
      else
        format.html { render :edit }
        format.json { render json: @aa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aas/1
  # DELETE /aas/1.json
  def destroy
    @aa.destroy
    respond_to do |format|
      format.html { redirect_to aas_url, notice: 'Aa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aa
      @aa = Aa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aa_params
      params.require(:aa).permit(:aclass, :segment, :sub_segment)
    end
end
