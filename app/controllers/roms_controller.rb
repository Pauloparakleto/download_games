class RomsController < ApplicationController
  #before_action :authenticate_use
  before_action :set_rom, only: [:show, :edit, :update, :destroy, :download]

  # GET /roms
  # GET /roms.json
  def index
    @rom_first_id = Rom.first.id
    @rom_last_id = Rom.last.id 
    @roms = Rom.find((@rom_first_id..@rom_last_id).to_a)
  end

  # GET /roms/1
  # GET /roms/1.json
  def show
  end

  # GET /roms/new
  def new
    @rom = Rom.new
  end

  # GET /roms/1/edit
  def edit
  end

  # POST /roms
  # POST /roms.json
  def create
    @rom = Rom.new(rom_params)

    respond_to do |format|
      if @rom.save
        format.html { redirect_to @rom, notice: 'Rom was successfully created.' }
        format.json { render :show, status: :created, location: @rom }
      else
        format.html { render :new }
        format.json { render json: @rom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roms/1
  # PATCH/PUT /roms/1.json
  def update
    respond_to do |format|
      if @rom.update(rom_params)
        format.html { redirect_to @rom, notice: 'Rom was successfully updated.' }
        format.json { render :show, status: :ok, location: @rom }
      else
        format.html { render :edit }
        format.json { render json: @rom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roms/1
  # DELETE /roms/1.json
  def destroy
    @rom.destroy
    respond_to do |format|
      format.html { redirect_to roms_url, notice: 'Rom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
    sleep(12)
    rom_path_download
  end

  def search
    return redirect_to admin_home_path if params[:q].blank?
    @parameter = params[:q].downcase
    @result = Rom.limit(4).where("lower(name) LIKE :q", q: "%#{@parameter}%")
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rom
      @rom = Rom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rom_params
      params.require(:rom).permit(:name, :image_url, :zip_file_link)
    end

    def rom_path_download
      redirect_to url_for(@rom.zip_file_link)
    end
end
