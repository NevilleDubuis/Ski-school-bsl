class TemporariesController < ApplicationController
  # GET /temporaries
  # GET /temporaries.json
  def index
    @temporaries = Temporary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temporaries }
    end
  end

  # GET /temporaries/1
  # GET /temporaries/1.json
  def show
    @temporary = Temporary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temporary }
    end
  end

  # GET /temporaries/new
  # GET /temporaries/new.json
  def new
    @temporary = Temporary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temporary }
    end
  end

  # GET /temporaries/1/edit
  def edit
    @temporary = Temporary.find(params[:id])
  end

  # POST /temporaries
  # POST /temporaries.json
  def create
    @temporary = Temporary.new(params[:temporary])

    respond_to do |format|
      if @temporary.save
        format.html { redirect_to @temporary, notice: 'Temporary was successfully created.' }
        format.json { render json: @temporary, status: :created, location: @temporary }
      else
        format.html { render action: "new" }
        format.json { render json: @temporary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temporaries/1
  # PUT /temporaries/1.json
  def update
    @temporary = Temporary.find(params[:id])

    respond_to do |format|
      if @temporary.update_attributes(params[:temporary])
        format.html { redirect_to @temporary, notice: 'Temporary was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @temporary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temporaries/1
  # DELETE /temporaries/1.json
  def destroy
    @temporary = Temporary.find(params[:id])
    @temporary.destroy

    respond_to do |format|
      format.html { redirect_to temporaries_url }
      format.json { head :ok }
    end
  end
end
