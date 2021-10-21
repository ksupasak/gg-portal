class ReportCovid19sController < ApplicationController
  before_action :set_report_covid19, only: %i[ show edit update destroy ]

  # GET /report_covid19s or /report_covid19s.json
  def index
    @report_covid19s = ReportCovid19.all
  end

  # GET /report_covid19s/1 or /report_covid19s/1.json
  def show
  end

  # GET /report_covid19s/new
  def new
    @report_covid19 = ReportCovid19.new
  end

  # GET /report_covid19s/1/edit
  def edit
  end
  
  
  # GET / print
  
  
  def print
    
    
    @report_covid19 = ReportCovid19.find params[:id]
    
    respond_to do |format|
    format.html { render "_print_partial", :layout => false  } 
    # format.html {render :partial=>'print_partial'}
    end
    
  end

  # POST /report_covid19s or /report_covid19s.json
  def create
    @report_covid19 = ReportCovid19.new(report_covid19_params)

    respond_to do |format|
      if @report_covid19.save
        format.html { redirect_to @report_covid19, notice: "Report covid19 was successfully created." }
        format.json { render :show, status: :created, location: @report_covid19 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report_covid19.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /report_covid19s/1 or /report_covid19s/1.json
  def update
    respond_to do |format|
      if @report_covid19.update(report_covid19_params)
        format.html { redirect_to @report_covid19, notice: "Report covid19 was successfully updated." }
        format.json { render :show, status: :ok, location: @report_covid19 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report_covid19.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /report_covid19s/1 or /report_covid19s/1.json
  def destroy
    @report_covid19.destroy
    respond_to do |format|
      format.html { redirect_to report_covid19s_url, notice: "Report covid19 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_covid19
      @report_covid19 = ReportCovid19.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_covid19_params
      params.require(:report_covid19).permit(:collection_date, :received_date, :reported_date, :patient_name, :patient_hn, :patient_an, :hospital_name, :physician_name, :accepted_sample, :sample_type, :result, :target_n1, :target_n2, :target_rp, :reported_by, :confirmed_by, :approved_by, :report_id, :token, :checksum)
    end
end
