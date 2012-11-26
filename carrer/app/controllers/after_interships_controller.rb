class AfterIntershipsController < ApplicationController
  # GET /after_interships
  # GET /after_interships.json
  def index
    @after_interships = AfterIntership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @after_interships }
    end
  end

  # GET /after_interships/1
  # GET /after_interships/1.json
  def show
    @after_intership = AfterIntership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @after_intership }
    end
  end

  # GET /after_interships/new
  # GET /after_interships/new.json
  def new
    @after_intership = AfterIntership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @after_intership }
    end
  end

  # GET /after_interships/1/edit
  def edit
    @after_intership = AfterIntership.find(params[:id])
  end

  # POST /after_interships
  # POST /after_interships.json
  def create
    @after_intership = AfterIntership.new(params[:after_intership])

    respond_to do |format|
      if @after_intership.save
        format.html { redirect_to @after_intership, notice: 'After intership was successfully created.' }
        format.json { render json: @after_intership, status: :created, location: @after_intership }
      else
        format.html { render action: "new" }
        format.json { render json: @after_intership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /after_interships/1
  # PUT /after_interships/1.json
  def update
    @after_intership = AfterIntership.find(params[:id])

    respond_to do |format|
      if @after_intership.update_attributes(params[:after_intership])
        format.html { redirect_to @after_intership, notice: 'After intership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @after_intership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /after_interships/1
  # DELETE /after_interships/1.json
  def destroy
    @after_intership = AfterIntership.find(params[:id])
    @after_intership.destroy

    respond_to do |format|
      format.html { redirect_to after_interships_url }
      format.json { head :no_content }
    end
  end
end
