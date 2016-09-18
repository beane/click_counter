class ButtonClicksController < ApplicationController
  before_action :set_button_click, only: [:show, :edit, :update, :destroy]

  # GET /button_clicks
  # GET /button_clicks.json
  def index
    @button_clicks = ButtonClick.all
  end

  # GET /button_clicks/1
  # GET /button_clicks/1.json
  def show
  end

  # GET /button_clicks/new
  def new
    @button_click = ButtonClick.new
  end

  # GET /button_clicks/1/edit
  def edit
  end

  # POST /button_clicks
  # POST /button_clicks.json
  def create
    @button_click = ButtonClick.new(button_click_params)

    respond_to do |format|
      if @button_click.save
        format.html { redirect_to :new_button_click, notice: 'Button click was successfully created.' }
        format.json { render :show, status: :created, location: @button_click }
      else
        format.html { render :new }
        format.json { render json: @button_click.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /button_clicks/1
  # PATCH/PUT /button_clicks/1.json
  def update
    respond_to do |format|
      if @button_click.update(button_click_params)
        format.html { redirect_to @button_click, notice: 'Button click was successfully updated.' }
        format.json { render :show, status: :ok, location: @button_click }
      else
        format.html { render :edit }
        format.json { render json: @button_click.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /button_clicks/1
  # DELETE /button_clicks/1.json
  def destroy
    @button_click.destroy
    respond_to do |format|
      format.html { redirect_to button_clicks_url, notice: 'Button click was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_button_click
      @button_click = ButtonClick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def button_click_params
      params.fetch(:button_click, {})
    end
end
