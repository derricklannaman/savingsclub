class SususController < ApplicationController
  before_action :find_susu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @susus = current_user.susus
    respond_with(@susus)
  end

  def show
    respond_with(@susu)
  end

  def new
    @susu = Susu.new
    respond_with(@susu)
  end

  def edit
  end

  def create
    @susu = Susu.new(susu_params)
    @susu.user_id = user_id
    @susu.save
    respond_with(@susu)
  end

  def update
    @susu.update(susu_params)
    respond_with(@susu)
  end

  def destroy
    @susu.destroy
    respond_with(@susu)
  end

  private
    def find_susu
      @susu = Susu.find(params[:id])
    end

    def user_id
      current_user.id
    end

    def susu_params
      params.require(:susu).permit(:name, :user_id, :total_value)
    end
end
