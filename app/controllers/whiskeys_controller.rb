class WhiskeysController < ApplicationController
  before_action :set_whiskey, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def search
    if params[:search].present?
      @whiskeys = Whiskey.search(params[:search])


    else
      @whiskeys = Whiskey.all
    end
  end

  def index
    @whiskeys = Whiskey.all.sort_by &:title
  end

  def show
  end

  def new
    @whiskey = current_user.whiskeys.build
  end

  def edit
  end

  def create
    @whiskey = current_user.whiskeys.build(whiskey_params)

    respond_to do |format|
      if @whiskey.save
        format.html { redirect_to @whiskey, notice: 'Whiskey was successfully created.' }
        format.json { render :show, status: :created, location: @whiskey }
      else
        format.html { render :new }
        format.json { render json: @whiskey.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @whiskey.update(whiskey_params)
        format.html { redirect_to @whiskey, notice: 'Whiskey was successfully updated.' }
        format.json { render :show, status: :ok, location: @whiskey }
      else
        format.html { render :edit }
        format.json { render json: @whiskey.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @whiskey.destroy
    respond_to do |format|
      format.html { redirect_to whiskeys_url, notice: 'Whiskey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whiskey
      @whiskey = Whiskey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whiskey_params
      params.require(:whiskey).permit(:title, :abv, :price, :color, :nose, :taste, :finish, :overall, :score, :image)
    end
end
