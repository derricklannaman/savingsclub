class MembersController < ApplicationController

  def index
    @members = current_user.members
  end

  def new
    @member = Member.new
    respond_with(@member)
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      respond_with(@member), notice: "Good Job"
    else
      render :new
    end
  end

  def edit
    find_member
  end

  def update
    find_member
    @member.update(member_params)
    respond_with(@member)
  end

  def show
    find_member
    respond_with(@member)
  end

  def destroy
    find_member
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
