class RfcsController < ApplicationController
  # GET /rfcs
  # GET /rfcs.json
  def index
    @rfcs = Rfc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rfcs }
    end
  end

  # GET /rfcs/1
  # GET /rfcs/1.json
  def show
    @rfc = Rfc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rfc }
    end
  end

  # GET /rfcs/new
  # GET /rfcs/new.json
  def new
    @rfc = Rfc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rfc }
    end
  end

  # GET /rfcs/1/edit
  def edit
    @rfc = Rfc.find(params[:id])
  end

  # POST /rfcs
  # POST /rfcs.json
  def create
    @rfc = Rfc.new(params[:rfc])

    respond_to do |format|
      if @rfc.save
        format.html { redirect_to rfcs_path }
        format.json { render json: @rfc, status: :created, location: @rfc }
      else
        format.html { render action: "new" }
        format.json { render json: @rfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rfcs/1
  # PUT /rfcs/1.json
  def update
    @rfc = Rfc.find(params[:id])

    respond_to do |format|
      if @rfc.update_attributes(params[:rfc])
        format.html { redirect_to rfcs_path }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfcs/1
  # DELETE /rfcs/1.json
  def destroy
    @rfc = Rfc.find(params[:id])
    @rfc.destroy

    respond_to do |format|
      format.html { redirect_to rfcs_url }
      format.json { head :no_content }
    end
  end
end
