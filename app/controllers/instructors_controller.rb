class InstructorsController < ApplicationController
  # GET /instructors
  # GET /instructors.json
  def index
    @instructors = Instructor.all

    respond_to do |format|
      format.json { render json: @instructors }
    end
  end

  # GET /instructors/1
  # GET /instructors/1.json
  def show
    @instructor = Instructor.find(params[:id])

    respond_to do |format|
      format.json { render json: @instructor }
    end
  end

  # GET /instructors/new
  # GET /instructors/new.json
  def new
    @instructor = Instructor.new

    respond_to do |format|
      format.json { render json: @instructor }
    end
  end

  # GET /instructors/1/edit
  def edit
    @instructor = Instructor.find(params[:id])
  end

  # POST /instructors
  # POST /instructors.json
  def create
    @instructor = Instructor.new(params[:instructor])

    respond_to do |format|
      if @instructor.save
        format.json { render json: @instructor, status: :created, location: @instructor }
      else
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instructors/1
  # PUT /instructors/1.json
  def update
    @instructor = Instructor.find(params[:id])

    respond_to do |format|
      if @instructor.update_attributes(params[:instructor])
        format.json { head :ok }
      else
        format.json { render json: @instructor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructors/1
  # DELETE /instructors/1.json
  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

    respond_to do |format|
      format.json { head :ok }
    end
  end
end
