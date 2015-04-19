class ObjetosController < ApplicationController
  before_action :set_objeto, only: [:show, :edit, :update, :destroy, :voteup, :votedown, :addcomment]

  # GET /objetos
  # GET /objetos.json
  def index
    if params[:id].present?
      @objetos = Objeto.where(padreid: params[:id]).where(tipe: [1,2]).order(tipe: :asc).order("upvote-downvote DESC")
    else
      @objetos = Objeto.where(padreid: nil).where(tipe: [1,2]).order(tipe: :asc).order("upvote-downvote DESC")
    end

  end

  def addcomment
    sleep 1
    @comment = Objeto.new(objeto_params)
    @comment.padreid = @objeto.id
    @comment.upvote = 0
    @comment.downvote = 0
    @comment.tipe = 3
    @comment.createdby = "autoUser"
    @comment.save
  end

  def voteup
    sleep 0.5
    @objeto.update(upvote: (@objeto.upvote+1))
  end

  def votedown
    sleep 0.5
    @objeto.update(downvote: (@objeto.downvote+1))
  end

  def show
    @comment = Objeto.new
  end

  # GET /objetos/new
  def new
    @objeto = Objeto.new
    if params[:pid].present?
      @objeto.padreid = params[:pid]
    end
    @objeto.upvote = 0
    @objeto.downvote = 0
    @objeto.tipe = 2
  end

  # GET /objetos/1/edit
  def edit
  end

  # POST /objetos
  # POST /objetos.json
  def create
    @objeto = Objeto.new(objeto_params)

    respond_to do |format|
      if @objeto.save
        format.html { redirect_to @objeto, notice: 'Objeto was successfully created.' }
        format.json { render :show, status: :created, location: @objeto }
      else
        format.html { render :new }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objetos/1
  # PATCH/PUT /objetos/1.json
  def update
    respond_to do |format|
      if @objeto.update(objeto_params)
        format.html { redirect_to @objeto, notice: 'Objeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @objeto }
      else
        format.html { render :edit }
        format.json { render json: @objeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objetos/1
  # DELETE /objetos/1.json
  def destroy
    @objeto.destroy
    respond_to do |format|
      format.html { redirect_to objetos_url, notice: 'Objeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objeto
      @objeto = Objeto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objeto_params
      params.require(:objeto).permit(:padreid, :titulo, :content, :createdby, :upvote, :downvote , :tipe)
    end
end
