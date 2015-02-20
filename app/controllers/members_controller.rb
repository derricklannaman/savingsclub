class MembersController < ApplicationController

  def index
    @members = current_user.members
  end

  def new
    @member = Member.new
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
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
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





end
