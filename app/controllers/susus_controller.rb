class SususController < ApplicationController
  before_action :find_susu, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    go_to_dashboard
  end

  def show
    respond_with(@susu)
  end

  def new
    new_susu
    respond_with(@susu)
  end

  def edit
  end

  def create
    new_susu(susu_params)
    @susu.user_id = user_id
    if @susu.save
      go_to_dashboard
    else
      render :new
    end

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

    def new_susu(susu_params=nil)
      @susu = Susu.new(susu_params)
    end

    def find_susu
      @susu = Susu.find(params[:id])
    end

    def user_id
      current_user.id
    end

    def susu_params
      params.require(:susu).permit(:name, :user_id, :start_date, :member_count,
                                   :total_value)
    end
end
