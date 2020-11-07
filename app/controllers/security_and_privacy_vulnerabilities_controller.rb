class SecurityAndPrivacyVulnerabilitiesController < ApplicationController
  before_action :set_security_and_privacy_vulnerability, only: [:show, :edit, :update, :destroy]

  # GET /security_and_privacy_vulnerabilities
  # GET /security_and_privacy_vulnerabilities.json
  def index
    @security_and_privacy_vulnerabilities = SecurityAndPrivacyVulnerability.all
  end

  # GET /security_and_privacy_vulnerabilities/1
  # GET /security_and_privacy_vulnerabilities/1.json
  def show
  end

  # GET /security_and_privacy_vulnerabilities/new
  def new
    @security_and_privacy_vulnerability = SecurityAndPrivacyVulnerability.new
  end

  # GET /security_and_privacy_vulnerabilities/1/edit
  def edit
  end

  # POST /security_and_privacy_vulnerabilities
  # POST /security_and_privacy_vulnerabilities.json
  def create
    @security_and_privacy_vulnerability = SecurityAndPrivacyVulnerability.new(security_and_privacy_vulnerability_params)

    respond_to do |format|
      if @security_and_privacy_vulnerability.save
        format.html { redirect_to @security_and_privacy_vulnerability, notice: 'Security and privacy vulnerability was successfully created.' }
        format.json { render :show, status: :created, location: @security_and_privacy_vulnerability }
      else
        format.html { render :new }
        format.json { render json: @security_and_privacy_vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /security_and_privacy_vulnerabilities/1
  # PATCH/PUT /security_and_privacy_vulnerabilities/1.json
  def update
    respond_to do |format|
      if @security_and_privacy_vulnerability.update(security_and_privacy_vulnerability_params)
        format.html { redirect_to @security_and_privacy_vulnerability, notice: 'Security and privacy vulnerability was successfully updated.' }
        format.json { render :show, status: :ok, location: @security_and_privacy_vulnerability }
      else
        format.html { render :edit }
        format.json { render json: @security_and_privacy_vulnerability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_and_privacy_vulnerabilities/1
  # DELETE /security_and_privacy_vulnerabilities/1.json
  def destroy
    @security_and_privacy_vulnerability.destroy
    respond_to do |format|
      format.html { redirect_to security_and_privacy_vulnerabilities_url, notice: 'Security and privacy vulnerability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_and_privacy_vulnerability
      @security_and_privacy_vulnerability = SecurityAndPrivacyVulnerability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def security_and_privacy_vulnerability_params
      params.require(:security_and_privacy_vulnerability).permit(:product_id, :cve_id, :severity, :description, :advisories)
    end
end
