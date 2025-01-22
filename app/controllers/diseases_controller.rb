# frozen_string_literal: true

class DiseasesController < ApplicationController
  before_action :set_disease, only: [ :show, :edit, :update, :destroy ]

  # GET /diseases or /diseases.json
  def index
    @diseases = Disease.all
  end

  # GET /diseases/1 or /diseases/1.json
  def show
  end

  # GET /diseases/new
  def new
    @disease = Disease.new
  end

  # GET /diseases/1/edit
  def edit
  end

  # POST /diseases or /diseases.json
  def create
    @disease = Disease.new(disease_params)

    respond_to do |format|
      if @disease.save
        format.html { redirect_to(@disease, notice: "Disease was successfully created.") }
        format.json { render(:show, status: :created, location: @disease) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @disease.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /diseases/1 or /diseases/1.json
  def update
    respond_to do |format|
      if @disease.update(disease_params)
        format.html { redirect_to(@disease, notice: "Disease was successfully updated.") }
        format.json { render(:show, status: :ok, location: @disease) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @disease.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /diseases/1 or /diseases/1.json
  def destroy
    @disease.destroy!

    respond_to do |format|
      format.html { redirect_to(diseases_path, status: :see_other, notice: "Disease was successfully destroyed.") }
      format.json { head(:no_content) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disease
      @disease = Disease.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def disease_params
      params.expect(disease: [ :name, :description ])
    end
end
