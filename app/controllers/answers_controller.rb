class AnswersController < ApplicationController
  before_action :set_answer, only: %i[ show edit update destroy ]

  # GET /answers or /answers.json
  def index
    @answers = Answer.all
  end

  # GET /answers/1 or /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new(question_id: params[:question_id]) # #MUST BE SEEDED! D-OH!!
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers or /answers.json
  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: "Answer was successfully created." }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @answer.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /answers/1 or /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: "Answer was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @answer.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /answers/1 or /answers/1.json
  def destroy
    @answer.destroy!

    respond_to do |format|
      format.html { redirect_to answers_path, notice: "Answer was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def answer_params
      params.expect(answer: [ :response, :question_id ])
      # or classic style:
      # params.require(:answer).permit(:response, :question_id)
    end
end
