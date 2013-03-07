class SubordinatesController < ApplicationController
  # GET /subordinates
  # GET /subordinates.json
  def index
    @subordinates = Subordinate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subordinates }
    end
  end

  # GET /subordinates/1
  # GET /subordinates/1.json
  def show
    @subordinate = Subordinate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subordinate }
    end
  end

  # GET /subordinates/new
  # GET /subordinates/new.json
  def new
    @subordinate = Subordinate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subordinate }
    end
  end

  # GET /subordinates/1/edit
  def edit
    @subordinate = Subordinate.find(params[:id])
  end

  # POST /subordinates
  # POST /subordinates.json
  def create
    @subordinate = Subordinate.new(params[:subordinate])

    respond_to do |format|
      if @subordinate.save
        format.html { redirect_to @subordinate, notice: 'Subordinate was successfully created.' }
        format.json { render json: @subordinate, status: :created, location: @subordinate }
      else
        format.html { render action: "new" }
        format.json { render json: @subordinate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subordinates/1
  # PUT /subordinates/1.json
  def update
    @subordinate = Subordinate.find(params[:id])

    respond_to do |format|
      if @subordinate.update_attributes(params[:subordinate])
        format.html { redirect_to @subordinate, notice: 'Subordinate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subordinate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subordinates/1
  # DELETE /subordinates/1.json
  def destroy
    @subordinate = Subordinate.find(params[:id])
    @subordinate.destroy

    respond_to do |format|
      format.html { redirect_to subordinates_url }
      format.json { head :no_content }
    end
  end
end
