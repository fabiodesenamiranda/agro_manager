# frozen_string_literal: true

class PraguesController < ApplicationController
  before_action :set_prague, only: [ :show, :edit, :update, :destroy ]

  # GET /pragues or /pragues.json
  def index
    @pragues = Prague.all
  end

  # GET /pragues/1 or /pragues/1.json
  def show
  end

  # GET /pragues/new
  def new
    @prague = Prague.new
  end

  # GET /pragues/1/edit
  def edit
  end

  # POST /pragues or /pragues.json
  def create
    @prague = Prague.new(prague_params)

    respond_to do |format|
      if @prague.save
        format.html { redirect_to(@prague, notice: "Prague was successfully created.") }
        format.json { render(:show, status: :created, location: @prague) }
      else
        format.html { render(:new, status: :unprocessable_entity) }
        format.json { render(json: @prague.errors, status: :unprocessable_entity) }
      end
    end
  end

  # PATCH/PUT /pragues/1 or /pragues/1.json
  def update
    respond_to do |format|
      if @prague.update(prague_params)
        format.html { redirect_to(@prague, notice: "Prague was successfully updated.") }
        format.json { render(:show, status: :ok, location: @prague) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @prague.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /pragues/1 or /pragues/1.json
  def destroy
    @prague.destroy!

    respond_to do |format|
      format.html { redirect_to(pragues_path, status: :see_other, notice: "Prague was successfully destroyed.") }
      format.json { head(:no_content) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prague
      @prague = Prague.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def prague_params
      params.expect(prague: [ :name, :description ])
    end
end
