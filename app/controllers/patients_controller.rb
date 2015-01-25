class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @patients = Patient.all
    respond_with(@patients)
  end

  def show
    respond_with(@patient)
  end

  def new
    @patient = Patient.new
    respond_with(@patient)

  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
    flash[:notice] = 'Patient details added successfully.' if @patient.save
   
    redirect_to :controller => 'home', :action => 'index'
    
  end

  def update
    @patient.update(patient_params)

    respond_with(@patient)
  end

  def destroy
    @patient.destroy
    respond_with(@patient)
  end
def import
      Patient.import(params[:file])
      redirect_to dashboard_index_path,notice: "Data imported"
    end
  private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:firstname, :lastname, :age, :mobile, :dob, :doctor,fields_attributes: [:id,:name,:_destroy,diseasefields_attributes:[:id,:name,:value,:disease_id]])
    end



end
