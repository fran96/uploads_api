class UploadsController < ApplicationController
  require 'base64'
  before_action :authenticate_user!

  # GET /uploads
  # GET /uploads.json
  def index
    @uploads = Upload.all
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
    if upload_exists?(params[:id])
      @upload = Upload.find(params[:id])
      send_file @upload.uri
      `open #{@upload.uri}`
    else
      render :error
    end
  end

  # POST /uploads
  # POST /uploads.json
  def create
    file_name = params[:upload][:file]
    incoming_file = params[:upload][:binary]
    uri = "#{Rails.root}/uploads/#{file_name}"
    FileUtils.cp_r incoming_file, uri

    @upload = Upload.new(user_id: current_user.id, filename: file_name, uri: uri)

    if @upload.save
      render :show, status: :created, location: @upload
    else
      render json: @upload.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    if upload_exists?(params[:id])
      @upload = Upload.find(params[:id])
      @upload.destroy
    else
      render :error
    end
  end

  private

  def upload_exists?(id)
    Upload.exists?(id: id)
  end

  def set_upload
    @upload = Upload.find(params[:id])
  end

  def upload_params
      params.require(:upload).permit(:binary, :file)
  end
end
