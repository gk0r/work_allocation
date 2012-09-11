class BaSpecsController < ApplicationController
  # GET /ba_specs
  # GET /ba_specs.json
  def index
    @ba_specs = BaSpec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ba_specs }
      format.csv { send_data @ba_specs.to_csv }
      format.xls
    end
  end

  # GET /ba_specs/1
  # GET /ba_specs/1.json
  def show
    @ba_spec = BaSpec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ba_spec }
    end
  end

  # GET /ba_specs/new
  # GET /ba_specs/new.json
  def new
    @ba_spec = BaSpec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ba_spec }
    end
  end

  # GET /ba_specs/1/edit
  def edit
    @ba_spec = BaSpec.find(params[:id])
  end

  # POST /ba_specs
  # POST /ba_specs.json
  def create
    @ba_spec = BaSpec.new(params[:ba_spec])

    respond_to do |format|
      if @ba_spec.save
        format.html { redirect_to ba_specs_path, :flash => {:success => "BA Spec created successfully"} }
        format.json { render json: @ba_spec, status: :created, location: @ba_spec }
      else
        format.html { render action: "new" }
        format.json { render json: @ba_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ba_specs/1
  # PUT /ba_specs/1.json
  def update
    @ba_spec = BaSpec.find(params[:id])

    respond_to do |format|
      if @ba_spec.update_attributes(params[:ba_spec])
        # format.html { redirect_to ba_specs_path, :flash => {:success => "BA Spec updated"} }
        format.html { redirect_to session[:return_to], :flash => {:success => "BA Spec updated"} }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ba_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ba_specs/1
  # DELETE /ba_specs/1.json
  def destroy
    @ba_spec = BaSpec.find(params[:id])
    @ba_spec.destroy

    respond_to do |format|
      format.html { redirect_to ba_specs_url }
      format.json { head :no_content }
    end
  end
end
