class PresidentsController < ApplicationController
  # GET /presidents
  # GET /presidents.json
  def index
    @presidents = President.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presidents }
    end
  end

  # GET /presidents/1
  # GET /presidents/1.json
  def show
    @president = President.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @president }
    end
  end

  # GET /presidents/new
  # GET /presidents/new.json
  def new
    @president = President.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @president }
    end
  end

  # GET /presidents/1/edit
  def edit
    @president = President.find(params[:id])
  end

  # POST /presidents
  # POST /presidents.json
  def create
    @president = President.new(params[:president])

    respond_to do |format|
      if @president.save
        format.html { redirect_to @president, notice: 'President was successfully created.' }
        format.json { render json: @president, status: :created, location: @president }
      else
        format.html { render action: "new" }
        format.json { render json: @president.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /presidents/1
  # PUT /presidents/1.json
  def update
    @president = President.find(params[:id])

    respond_to do |format|
      if @president.update_attributes(params[:president])
        format.html { redirect_to @president, notice: 'President was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @president.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presidents/1
  # DELETE /presidents/1.json
  def destroy
    @president = President.find(params[:id])
    @president.destroy

    respond_to do |format|
      format.html { redirect_to presidents_url }
      format.json { head :no_content }
    end
  end
end
