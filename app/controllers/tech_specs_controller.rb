class TechSpecsController < ApplicationController
  # GET /tech_specs
  # GET /tech_specs.json
  def index
    @tech_specs = TechSpec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tech_specs }
      format.csv { send_data @ba_specs.to_csv }
      format.xls
    end
  end

  # GET /tech_specs/1
  # GET /tech_specs/1.json
  def show
    @tech_spec = TechSpec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tech_spec }
    end
  end

  # GET /tech_specs/new
  # GET /tech_specs/new.json
  def new
    @tech_spec = TechSpec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tech_spec }
    end
  end

  # GET /tech_specs/1/edit
  def edit
    @tech_spec = TechSpec.find(params[:id])
  end

  # POST /tech_specs
  # POST /tech_specs.json
  def create
    @tech_spec = TechSpec.new(params[:tech_spec])

    respond_to do |format|
      if @tech_spec.save
        format.html { redirect_to tech_specs_path, :flash => {:success => "Tech Spec created"} }
        format.json { render json: @tech_spec, status: :created, location: @tech_spec }
      else
        format.html { render action: "new" }
        format.json { render json: @tech_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tech_specs/1
  # PUT /tech_specs/1.json
  def update
    @tech_spec = TechSpec.find(params[:id])

    respond_to do |format|
      if @tech_spec.update_attributes(params[:tech_spec])
        format.html { redirect_to session[:return_to], :flash => {:success => "Tech Spec updated"} }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tech_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_specs/1
  # DELETE /tech_specs/1.json
  def destroy
    @tech_spec = TechSpec.find(params[:id])
    @tech_spec.destroy

    respond_to do |format|
      format.html { redirect_to tech_specs_url }
      format.json { head :no_content }
    end
  end
end
