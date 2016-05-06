class PatientsController < ApplicationController
  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render :show, status: :created
    else
      render_ae_error @patient
    end
  end

  def show
    @patient = Patient.find_by_id(params[:id])
    render :show
  end

  def get_by_inn
    @patient = Patient.find_by_inn(params[:inn])
    render :show
  end

  def generate_access_token
    @patient = Patient.find_by_id(params[:id])
    @patient.generate_access_token
    render :show
  end

  private
    def patient_params
      params.permit(:name, :surname, :email, :phone, :sex, :birthday, :inn, :certificate_of_insurance, :password)
    end
end
