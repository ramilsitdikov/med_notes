class DoctorsController < ApplicationController
  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      render :show, status: :created
    else
      render_ae_error @doctor
    end
  end

  def show
    @doctor = Doctor.find_by_id(params[:id])
    render :show
  end

  private
    def doctor_params
      params.permit(:name, :surname, :email, :phone, :password)
    end
end
