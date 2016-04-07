class AuthotsController < ApplicationController
  before_action :set_authot, only: [:show, :edit, :update, :destroy]

  # GET /authots
  # GET /authots.json
  def index
    @authots = Authot.all
  end

  # GET /authots/1
  # GET /authots/1.json
  def show
  end

  # GET /authots/new
  def new
    @authot = Authot.new
  end

  # GET /authots/1/edit
  def edit
  end

  # POST /authots
  # POST /authots.json
  def create
    @authot = Authot.new(authot_params)

    respond_to do |format|
      if @authot.save
        format.html { redirect_to @authot, notice: 'Authot was successfully created.' }
        format.json { render :show, status: :created, location: @authot }
      else
        format.html { render :new }
        format.json { render json: @authot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authots/1
  # PATCH/PUT /authots/1.json
  def update
    respond_to do |format|
      if @authot.update(authot_params)
        format.html { redirect_to @authot, notice: 'Authot was successfully updated.' }
        format.json { render :show, status: :ok, location: @authot }
      else
        format.html { render :edit }
        format.json { render json: @authot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authots/1
  # DELETE /authots/1.json
  def destroy
    @authot.destroy
    respond_to do |format|
      format.html { redirect_to authots_url, notice: 'Authot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authot
      @authot = Authot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authot_params
      params.require(:authot).permit(:username, :email, :password, :password_confirmation)
    end
end
