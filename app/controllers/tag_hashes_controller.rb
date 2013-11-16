class TagHashesController < ApplicationController
#  before_action :set_tag_hash, only: [:show, :edit, :update, :destroy]


  # GET /tag_hashes
  # GET /tag_hashes.json
  def index
    @photograph = Photograph.find_by_id(params[:photograph_id])
    @tag_hashes = @photograph.tag_hashes
  end

  # GET /tag_hashes/1
  # GET /tag_hashes/1.json
  def show
    @tag_hash = TagHash.find(params[:id])
  end

  # GET /tag_hashes/new
  def new
    @photograph = Photograph.find_by_id(params[:photograph_id])
    @tag_hash = TagHash.new
  end

  # GET /tag_hashes/1/edit
  def edit
    @tag_hash = TagHash.find(params[:id])
  end

  # POST /tag_hashes
  # POST /tag_hashes.json
  def create
    @photograph = Photograph.find_by_id(params[:photograph_id])
    @tag_hash = TagHash.new(tag_hash_params)
    @tag_hash.photograph = @photograph #same as @tag_hash.photograph_id = @photograph.id

    respond_to do |format|
      if @tag_hash.save
        format.html { redirect_to root_path, notice: "Tag was successfully created for #{@photograph.title}" }
        format.json { render action: 'show', status: :created, location: @tag_hash }
      else
        format.html { render action: 'new' }
        format.json { render json: @tag_hash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_hashes/1
  # PATCH/PUT /tag_hashes/1.json
  def update
    respond_to do |format|
      if @tag_hash.update(tag_hash_params)
        format.html { redirect_to @tag_hash, notice: 'Tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tag_hash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_hashes/1
  # DELETE /tag_hashes/1.json
  def destroy
    @tag_hash.destroy
    respond_to do |format|
      format.html { redirect_to tag_hashes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_hash
    # @tag_hash = TagHash.find(params[:id])
      @photograph = Photograph.find_by_id(params[:photograph_id])
      @tag_hash = @photograph.tag_hashes.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_hash_params
      params.require(:tag_hash).permit(:key, :value, :photograph_id)
    end
end
