class ContextSubjController < ApplicationController
  before_action :find_subject, only: [:show, :edit, :update, :destroy]

  def index
    @subjects = ContextSubj.all
  end

  def new
    @subject = ContextSubj.new
  end

  def create
    @subject = ContextSubj.new(context_subj_params)
    if @subject.save
      redirect_to context_subj_index_path, notice: 'Subject created successfully.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @subject.update(context_subj_params)
      redirect_to context_subj_path(@subject), notice: 'Subject updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    redirect_to context_subj_index_path, notice: 'Subject deleted successfully.'
  end

  private

  def context_subj_params
    params.require(:context_subj).permit(:reason)
  end

  def find_subject
    @subject = ContextSubj.find(params[:id])
  end
end
