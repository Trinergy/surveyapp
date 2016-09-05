class FormsController < ApplicationController
  def home
  end

  def new
    @form = Form.new
    @form.questions.build
  end

  def create
    @form = Form.new(form_params)

    if @form.save
      redirect_to @form
    else
      render 'new'
    end
  end

  def show
    @form = Form.find(params[:id])
    @questions = Question.where("form_id = ?", params[:id])
  end

  private

  def form_params
    params.require(:form).permit(:title, :text, questions_attributes: [:form_id, :question, '_destroy'])
  end

end
