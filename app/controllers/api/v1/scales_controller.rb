
class Api::V1::ScalesController < ApplicationController
# app/controllers/api/v1/scales_controller.rb


  # GET /api/v1/scales
  def index
    @scales = Scale.all
    render json: @scales
  end

  # GET /api/v1/scales/1
  def show
    render json: @scale
  end

  # POST /api/v1/scales
  def create
    # NOT: Gerçek bir uygulamada, user_id'yi kimlik doğrulama token'ından almalısınız.
    @scale = Scale.new(scale_params.merge(user_id: 1)) # Geçici olarak user_id: 1 atandı

    if @scale.save
      render json: @scale, status: :created
    else
      render json: @scale.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/scales/1
  def update
    if @scale.update(scale_params)
      render json: @scale
    else
      render json: @scale.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/scales/1
  def destroy
    @scale.destroy
    head :no_content
  end

  private
    # Tekrarlanan kodu önlemek için ölçeği bulur.
    def set_scale
      @scale = Scale.find(params[:id])
    end

    # Güvenlik için izin verilen parametreleri tanımlar (Strong Parameters)
    def scale_params
      params.require(:scale).permit(:title, :scale_identifier, :metadata, :citation_count, :user_id)
    end
end
end
