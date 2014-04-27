class TstsController < ApplicationController
  # GET /tsts
  # GET /tsts.json
  def index
    @tsts = Tst.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tsts }
    end
  end

  # GET /tsts/1
  # GET /tsts/1.json
  def show
    @tst = Tst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tst }
    end
  end

  # GET /tsts/new
  # GET /tsts/new.json
  def new
    @tst = Tst.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tst }
    end
  end

  # GET /tsts/1/edit
  def edit
    @tst = Tst.find(params[:id])
  end

  # POST /tsts
  # POST /tsts.json
  def create
    @tst = Tst.new(params[:tst])

    respond_to do |format|
      if @tst.save
        format.html { redirect_to session[:return_to] }
        format.json { render json: @tst, status: :created, location: @tst }
      else
        format.html { render action: "new" }
        format.json { render json: @tst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tsts/1
  # PUT /tsts/1.json
  def update
    @tst = Tst.find(params[:id])

    respond_to do |format|
      if @tst.update_attributes(params[:tst])
        format.html { redirect_to session[:return_to] }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tsts/1
  # DELETE /tsts/1.json
  def destroy
    @tst = Tst.find(params[:id])
    @tst.destroy

    respond_to do |format|
      format.html { redirect_to tsts_url }
      format.json { head :no_content }
    end
  end
end
