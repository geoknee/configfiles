class FritsController < ApplicationController
  # GET /frits
  # GET /frits.json
  def index
    @frits = Frit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @frits }
    end
  end

  # GET /frits/1
  # GET /frits/1.json
  def show
    @frit = Frit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @frit }
    end
  end

  # GET /frits/new
  # GET /frits/new.json
  def new
    @frit = Frit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @frit }
    end
  end

  # GET /frits/1/edit
  def edit
    @frit = Frit.find(params[:id])
  end

  # POST /frits
  # POST /frits.json
  def create
    @frit = Frit.new(params[:frit])

    respond_to do |format|
      if @frit.save
        format.html { redirect_to @frit, notice: 'Frit was successfully created.' }
        format.json { render json: @frit, status: :created, location: @frit }
      else
        format.html { render action: "new" }
        format.json { render json: @frit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /frits/1
  # PUT /frits/1.json
  def update
    @frit = Frit.find(params[:id])

    respond_to do |format|
      if @frit.update_attributes(params[:frit])
        format.html { redirect_to @frit, notice: 'Frit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @frit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frits/1
  # DELETE /frits/1.json
  def destroy
    @frit = Frit.find(params[:id])
    @frit.destroy

    respond_to do |format|
      format.html { redirect_to frits_url }
      format.json { head :no_content }
    end
  end
end
