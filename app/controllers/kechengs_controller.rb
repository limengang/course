class KechengsController < ApplicationController
  before_action :set_kecheng, only: [:show, :edit, :update, :destroy]

  # GET /kechengs
  # GET /kechengs.json
  def index
    @kechengs = Kecheng.all
    if params[:name].present?
    @kecheng = Kecheng.where("name like ?","%#{params[:name]}%")
    end
    if params[:teacher].present?
    @kecheng = Kecheng.where("teacher like ?","%#{params[:teacher]}%")
    end
    if params[:time].present?
    @kecheng = Kecheng.where("time like ?","%#{params[:time]}%")
    end
  end

  # GET /kechengs/1
  # GET /kechengs/1.json
  def show
  end

  # GET /kechengs/new
  def new
    @kecheng = Kecheng.new
  end

  # GET /kechengs/1/edit
  def edit
  end

  # POST /kechengs
  # POST /kechengs.json
  def create
    @kecheng = Kecheng.new(kecheng_params)

    respond_to do |format|
      if @kecheng.save
        format.html { redirect_to @kecheng, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @kecheng }
      else
        format.html { render :new }
        format.json { render json: @kecheng.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kechengs/1
  # PATCH/PUT /kechengs/1.json
  def update
    respond_to do |format|
      if @kecheng.update(kecheng_params)
        format.html { redirect_to @kecheng, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @kecheng }
      else
        format.html { render :edit }
        format.json { render json: @kecheng.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kechengs/1
  # DELETE /kechengs/1.json
  def destroy
    @kecheng.destroy
    respond_to do |format|
      format.html { redirect_to kechengs_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kecheng
      @kecheng = Kecheng.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kecheng_params
      params.require(:kecheng).permit(:name, :teacher, :time)
    end
end
