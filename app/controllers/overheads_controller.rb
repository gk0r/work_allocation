class OverheadsController < ApplicationController
  # GET /overheads
  # GET /overheads.json
  def index
    @overheads = Overhead.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @overheads }
    end
  end

  # GET /overheads/1
  # GET /overheads/1.json
  def show
    @overhead = Overhead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @overhead }
    end
  end

  # GET /overheads/new
  # GET /overheads/new.json
  def new
    @overhead = Overhead.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @overhead }
    end
  end

  # GET /overheads/1/edit
  def edit
    @overhead = Overhead.find(params[:id])
  end

  # POST /overheads
  # POST /overheads.json
  def create
    @overhead = Overhead.new(params[:overhead])

    respond_to do |format|
      if @overhead.save
        format.html { redirect_to @overhead, notice: 'Overhead was successfully created.' }
        format.json { render json: @overhead, status: :created, location: @overhead }
      else
        format.html { render action: "new" }
        format.json { render json: @overhead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /overheads/1
  # PUT /overheads/1.json
  def update
    @overhead = Overhead.find(params[:id])

    respond_to do |format|
      if @overhead.update_attributes(params[:overhead])
        format.html { redirect_to @overhead, notice: 'Overhead was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @overhead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overheads/1
  # DELETE /overheads/1.json
  def destroy
    @overhead = Overhead.find(params[:id])
    @overhead.destroy

    respond_to do |format|
      format.html { redirect_to overheads_url }
      format.json { head :no_content }
    end
  end
end
