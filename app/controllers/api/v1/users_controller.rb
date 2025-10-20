class Api::V1::UsersController < ApplicationController
  # GET /api/v1/users
  def index
    @users = User.all # Tüm kullanıcıları veritabanından çeker
    render json: @users, status: :ok # JSON formatında döndürür
  end
  
  # Şimdilik diğer metodlar (show, create, update, destroy) boş kalabilir
  
  # Güvenlik için izin verilen parametrelerin tanımlanması
  private

  def user_params
    # Önemli: Gerçek bir uygulamada password_digest yerine password kabul edilir ve bcrypt ile işlenir.
    params.require(:user).permit(:email, :role, :credit_balance, :password_digest) 
  end
end
