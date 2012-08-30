class CodeController < ApplicationController
  
  # GET /code
  # GET /code.json
  def index
    @code = Code.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @code }
    end
  end

  # GET /code/1
  # GET /code/1.json
  def show
    @code = Code.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @code }
    end
  end

  # GET /code/new
  # GET /code/new.json
  def new
    @code = Code.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @code }
    end
  end

  # GET /code/1/edit
  def edit
    @code = Code.find(params[:id])
  end

  # POST /code
  # POST /code.json
  def create
    @code = Code.new(params[:code])
    
    return cancel_button_processing(params[:cancel]) if params[:cancel]
    
    respond_to do |format|
      if @code.save
        format.html { redirect_to code_index_url, :flash => {:success => "Code deliverable added successfully"} }
        format.json { render json: @code, status: :created, location: @code }
      else
        format.html { render action: "new" }
        format.json { render json: @code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /code/1
  # PUT /code/1.json
  def update
    @code = Code.find(params[:id])
    
    respond_to do |format|
      if @code.update_attributes(params[:code])
        format.html { redirect_to session[:return_to], :flash => {:success => "Code deliverable updated"} }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code/1
  # DELETE /code/1.json
  def destroy
    @code = Code.find(params[:id])
    @code.destroy

    respond_to do |format|
      format.html { redirect_to code_index_url }
      format.json { head :no_content }
    end
  end
end
