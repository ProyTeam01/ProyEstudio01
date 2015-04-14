class PruebsController < ApplicationController
  before_action :set_prueb, only: [:show, :edit, :update, :destroy]

  # GET /pruebs
  # GET /pruebs.json
  def index
    @pruebs = Prueb.all
  end

  # GET /pruebs/1
  # GET /pruebs/1.json
  def show
  end

  # GET /pruebs/new
  def new
    @prueb = Prueb.new
  end

  # GET /pruebs/1/edit
  def edit
  end

  # POST /pruebs
  # POST /pruebs.json
  def create
    @prueb = Prueb.new(prueb_params)

    respond_to do |format|
      if @prueb.save
        format.html { redirect_to @prueb, notice: 'Prueb was successfully created.' }
        format.json { render :show, status: :created, location: @prueb }
      else
        format.html { render :new }
        format.json { render json: @prueb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pruebs/1
  # PATCH/PUT /pruebs/1.json
  def update
    respond_to do |format|
      if @prueb.update(prueb_params)
        format.html { redirect_to @prueb, notice: 'Prueb was successfully updated.' }
        format.json { render :show, status: :ok, location: @prueb }
      else
        format.html { render :edit }
        format.json { render json: @prueb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pruebs/1
  # DELETE /pruebs/1.json
  def destroy
    @prueb.destroy
    respond_to do |format|
      format.html { redirect_to pruebs_url, notice: 'Prueb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prueb
      @prueb = Prueb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prueb_params
      params.require(:prueb).permit(:nom, :desc)
    end
end
