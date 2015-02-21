class MembersController < ApplicationController

  before_action :find_member, only: [:edit, :update, :show, :delete]
  respond_to :html, :json

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
    respond_with(@member)
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:notice] = "Great. Member saved Successfully."
      respond_with(@member)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @member.update(member_params)
    respond_with(@member)
  end

  def show
    respond_with(@member)
  end

  def destroy
    @member.destroy
    respond_with(@member)
  end

private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :email)
  end

  def find_member
    @member = Member.find(params[:id])
  end


end
