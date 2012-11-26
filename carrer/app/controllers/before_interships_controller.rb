class BeforeIntershipsController < ApplicationController
  # GET /before_interships
  # GET /before_interships.json
  def index
    @before_interships = BeforeIntership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @before_interships }
    end
  end

  # GET /before_interships/1
  # GET /before_interships/1.json
  def show
    @before_intership = BeforeIntership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @before_intership }
    end
  end

  # GET /before_interships/new
  # GET /before_interships/new.json
  def new
    @before_intership = BeforeIntership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @before_intership }
    end
  end

  # GET /before_interships/1/edit
  def edit
    @before_intership = BeforeIntership.find(params[:id])
  end

  # POST /before_interships
  # POST /before_interships.json
  def create
    @before_intership = BeforeIntership.new(params[:before_intership])

    respond_to do |format|
      if @before_intership.save
        format.html { redirect_to @before_intership, notice: 'Before intership was successfully created.' }
        format.json { render json: @before_intership, status: :created, location: @before_intership }
      else
        format.html { render action: "new" }
        format.json { render json: @before_intership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /before_interships/1
  # PUT /before_interships/1.json
  def update
    @before_intership = BeforeIntership.find(params[:id])

    respond_to do |format|
      if @before_intership.update_attributes(params[:before_intership])
        format.html { redirect_to @before_intership, notice: 'Before intership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @before_intership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /before_interships/1
  # DELETE /before_interships/1.json
  def destroy
    @before_intership = BeforeIntership.find(params[:id])
    @before_intership.destroy

    respond_to do |format|
      format.html { redirect_to before_interships_url }
      format.json { head :no_content }
    end
  end
end
