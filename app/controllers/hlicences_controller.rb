# frozen_string_literal: true

class HlicencesController < ApplicationController
  http_basic_authenticate_with name: "adm", password: "secret", except: [:index, :show]
  def index
    @hlicences = Hlicence.all
  end

  def show
    @hlicence = Hlicence.find(params[:id])
  end

  def new
    @hlicence = Hlicence.new
  end

  def create
    @hlicence = Hlicence.new(hlicence_params)

    if @hlicence.save
      redirect_to @hlicence
    else
      render :new, status: :unpocessable_entity
    end
  end

  def edit
    @hlicence = Hlicence.find(params[:id])
  end

  def update
    @hlicence = Hlicence.find(params[:id])

    if @hlicence.update(article_params)
      redirect_to @hlicence
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hlicence = Hlicence.find(params[:id])
    @hlicence.destroy

    redirect_to root_path, status: :see_other
  end
  
  private

    def hlicence_params
      params.require(:hlicence).permit(:name, :department, :gender, :specie)
    end
end
