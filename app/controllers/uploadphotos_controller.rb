class UploadphotosController < ApplicationController
  before_action :set_uploadphoto, only: [:show, :edit, :update, :destroy]

  # GET /uploadphotos
  # GET /uploadphotos.json
  def index
    @uploadphotos = Uploadphoto.all
  end

  # GET /uploadphotos/1
  # GET /uploadphotos/1.json
  def show
  end

  # GET /uploadphotos/new
  def new
    @uploadphoto = Uploadphoto.new
  end

  # GET /uploadphotos/1/edit
  def edit
  end

  # POST /uploadphotos
  # POST /uploadphotos.json
  def create
    @uploadphoto = Uploadphoto.new(uploadphoto_params)

    respond_to do |format|
      if @uploadphoto.save
        format.html { redirect_to @uploadphoto, notice: 'Uploadphoto was successfully created.' }
        format.json { render :show, status: :created, location: @uploadphoto }
      else
        format.html { render :new }
        format.json { render json: @uploadphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uploadphotos/1
  # PATCH/PUT /uploadphotos/1.json
  def update
    respond_to do |format|
      if @uploadphoto.update(uploadphoto_params)
        format.html { redirect_to @uploadphoto, notice: 'Uploadphoto was successfully updated.' }
        format.json { render :show, status: :ok, location: @uploadphoto }
      else
        format.html { render :edit }
        format.json { render json: @uploadphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploadphotos/1
  # DELETE /uploadphotos/1.json
  def destroy
    @uploadphoto.destroy
    respond_to do |format|
      format.html { redirect_to uploadphotos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uploadphoto
      @uploadphoto = Uploadphoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uploadphoto_params
      params.require(:uploadphoto).permit(:name, :file, :size, :content_type)
    end
end
