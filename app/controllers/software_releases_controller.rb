class SoftwareReleasesController < ApplicationController
  # GET /software_releases
  # GET /software_releases.json
  def index
    @software_releases = SoftwareRelease.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @software_releases }
    end
  end

  # GET /software_releases/1
  # GET /software_releases/1.json
  def show
    @software_release = SoftwareRelease.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @software_release }
    end
  end

  # GET /software_releases/new
  # GET /software_releases/new.json
  def new
    @software_release = SoftwareRelease.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @software_release }
    end
  end

  # GET /software_releases/1/edit
  def edit
    @software_release = SoftwareRelease.find(params[:id])
  end

  # POST /software_releases
  # POST /software_releases.json
  def create
    @software_release = SoftwareRelease.new(params[:software_release])

    respond_to do |format|
      if @software_release.save
        format.html { redirect_to software_releases_path, :flash => {:success => "Software release was successfully created."} }
        format.json { render json: @software_release, status: :created, location: @software_release }
      else
        format.html { render action: "new" }
        format.json { render json: @software_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /software_releases/1
  # PUT /software_releases/1.json
  def update
    @software_release = SoftwareRelease.find(params[:id])

    respond_to do |format|
      if @software_release.update_attributes(params[:software_release])
        format.html { redirect_to software_releases_path, :flash => {:success => "Software release was successfully updated."} }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @software_release.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /software_releases/1
  # DELETE /software_releases/1.json
  def destroy
    @software_release = SoftwareRelease.find(params[:id])
    @software_release.destroy

    respond_to do |format|
      format.html { redirect_to software_releases_url }
      format.json { head :no_content }
    end
  end
end
