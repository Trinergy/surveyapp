class FormsController < ApplicationController
  def home
  end

  def new
    @form = Form.new
    3.times do @form.questions.build end
    @form.questions.each do |question|
      question.answers.build
    end
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
  end

  private

  def form_params
    params.require(:form).permit(
      :title, 
      :text, 
      :template,
      questions_attributes: [
        :form_id, 
        :question,
        :order, 
        '_destroy', 
        answers_attributes: [ 
          :question_id, 
          :name, 
          :text, 
          :answer_type, 
          :selected, 
          :order]
        ]
      )
  end

end
