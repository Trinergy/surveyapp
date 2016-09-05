class FormsController < ApplicationController
  def home
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    @question = Question.new(question_params)

    if @form.save
      @question.form_id = @form.id
      @question.save
      redirect_to @form
    else
      render 'new'
    end
  end

  def show
    @form = Form.find(params[:id])
    @questions = [Question.find_by(form_id: params[:id])]
  end

  private

  def form_params
    params.require(:form).permit(:title, :text)
  end

  def question_params
    params.require(:form).permit(:question)
  end
end
